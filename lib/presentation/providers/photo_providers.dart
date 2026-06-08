// lib/presentation/providers/photo_providers.dart

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart';
import '../../core/network/dio_client.dart';
import '../../data/datasources/photo_remote_datasource.dart';
import '../../data/datasources/photo_local_datasource.dart';
import '../../data/repositories/photo_repository_impl.dart';

export '../../data/repositories/photo_repository_impl.dart'
    show PhotoEntity, PhotoRepository;

// ─── Infrastructure ──────────────────────────────────────────────────────────

final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError('Override en main.dart');
});

final dioProvider = Provider<Dio>((ref) => DioClient.create());

final remoteDataSourceProvider = Provider<PhotoRemoteDataSource>(
  (ref) => PhotoRemoteDataSourceImpl(ref.watch(dioProvider)),
);

final localDataSourceProvider = Provider<PhotoLocalDataSource>(
  (ref) => PhotoLocalDataSourceImpl(ref.watch(sharedPreferencesProvider)),
);

final photoRepositoryProvider = Provider<PhotoRepository>(
  (ref) => PhotoRepositoryImpl(
    remote: ref.watch(remoteDataSourceProvider),
    local: ref.watch(localDataSourceProvider),
  ),
);

// ─── Theme ───────────────────────────────────────────────────────────────────

final themeProvider = StateNotifierProvider<ThemeNotifier, bool>((ref) {
  return ThemeNotifier(ref.watch(photoRepositoryProvider));
});

class ThemeNotifier extends StateNotifier<bool> {
  final PhotoRepository _repo;
  ThemeNotifier(this._repo) : super(false) {
    _load();
  }
  Future<void> _load() async => state = await _repo.getDarkMode();
  Future<void> toggle() async {
    state = !state;
    await _repo.setDarkMode(state);
  }
}

// ─── Home photos (popular) ───────────────────────────────────────────────────

class PhotoListState {
  final List<PhotoEntity> photos;
  final bool isLoading;
  final bool isLoadingMore;
  final bool hasMore;
  final String? error;
  final int currentPage;

  const PhotoListState({
    this.photos = const [],
    this.isLoading = false,
    this.isLoadingMore = false,
    this.hasMore = true,
    this.error,
    this.currentPage = 1,
  });

  PhotoListState copyWith({
    List<PhotoEntity>? photos,
    bool? isLoading,
    bool? isLoadingMore,
    bool? hasMore,
    String? error,
    int? currentPage,
  }) =>
      PhotoListState(
        photos: photos ?? this.photos,
        isLoading: isLoading ?? this.isLoading,
        isLoadingMore: isLoadingMore ?? this.isLoadingMore,
        hasMore: hasMore ?? this.hasMore,
        error: error,
        currentPage: currentPage ?? this.currentPage,
      );
}

final photoListProvider =
    StateNotifierProvider<PhotoListNotifier, PhotoListState>(
  (ref) => PhotoListNotifier(ref.watch(photoRepositoryProvider)),
);

class PhotoListNotifier extends StateNotifier<PhotoListState> {
  final PhotoRepository _repo;

  PhotoListNotifier(this._repo) : super(const PhotoListState()) {
    loadInitial();
  }

  Future<void> loadInitial() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final photos = await _repo.getPhotos(page: 1);
      state = state.copyWith(
        photos: photos,
        isLoading: false,
        hasMore: photos.length == 20,
        currentPage: 2,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> loadMore() async {
    if (state.isLoadingMore || !state.hasMore) return;
    state = state.copyWith(isLoadingMore: true);
    try {
      final photos = await _repo.getPhotos(page: state.currentPage);
      state = state.copyWith(
        photos: [...state.photos, ...photos],
        isLoadingMore: false,
        hasMore: photos.length == 20,
        currentPage: state.currentPage + 1,
      );
    } catch (e) {
      state = state.copyWith(isLoadingMore: false, error: e.toString());
    }
  }

  Future<void> refresh() => loadInitial();
}

// ─── Search ───────────────────────────────────────────────────────────────────

class SearchState {
  final List<PhotoEntity> results;
  final bool isLoading;
  final bool isLoadingMore;
  final bool hasMore;
  final String? error;
  final String query;
  final int currentPage;

  const SearchState({
    this.results = const [],
    this.isLoading = false,
    this.isLoadingMore = false,
    this.hasMore = false,
    this.error,
    this.query = '',
    this.currentPage = 1,
  });

  SearchState copyWith({
    List<PhotoEntity>? results,
    bool? isLoading,
    bool? isLoadingMore,
    bool? hasMore,
    String? error,
    String? query,
    int? currentPage,
  }) =>
      SearchState(
        results: results ?? this.results,
        isLoading: isLoading ?? this.isLoading,
        isLoadingMore: isLoadingMore ?? this.isLoadingMore,
        hasMore: hasMore ?? this.hasMore,
        error: error,
        query: query ?? this.query,
        currentPage: currentPage ?? this.currentPage,
      );
}

final searchProvider =
    StateNotifierProvider<SearchNotifier, SearchState>(
  (ref) => SearchNotifier(ref.watch(photoRepositoryProvider)),
);

class SearchNotifier extends StateNotifier<SearchState> {
  final PhotoRepository _repo;
  SearchNotifier(this._repo) : super(const SearchState());

  Future<void> search(String query) async {
    if (query.trim().isEmpty) {
      state = const SearchState();
      return;
    }
    state = state.copyWith(
      isLoading: true,
      query: query,
      results: [],
      error: null,
      currentPage: 1,
    );
    try {
      final results = await _repo.searchPhotos(query: query, page: 1);
      state = state.copyWith(
        results: results,
        isLoading: false,
        hasMore: results.length == 20,
        currentPage: 2,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, error: 'Error al buscar');
    }
  }

  Future<void> loadMore() async {
    if (state.isLoadingMore || !state.hasMore || state.query.isEmpty) return;
    state = state.copyWith(isLoadingMore: true);
    try {
      final results =
          await _repo.searchPhotos(query: state.query, page: state.currentPage);
      state = state.copyWith(
        results: [...state.results, ...results],
        isLoadingMore: false,
        hasMore: results.length == 20,
        currentPage: state.currentPage + 1,
      );
    } catch (e) {
      state = state.copyWith(isLoadingMore: false);
    }
  }

  void clear() => state = const SearchState();
}

// ─── Favorites ────────────────────────────────────────────────────────────────

final favoritesProvider =
    StateNotifierProvider<FavoritesNotifier, List<String>>(
  (ref) => FavoritesNotifier(ref.watch(photoRepositoryProvider)),
);

class FavoritesNotifier extends StateNotifier<List<String>> {
  final PhotoRepository _repo;
  FavoritesNotifier(this._repo) : super([]) {
    _load();
  }
  Future<void> _load() async => state = await _repo.getFavorites();
  Future<void> toggle(String photoId) async {
    await _repo.toggleFavorite(photoId);
    await _load();
  }
  bool isFavorite(String photoId) => state.contains(photoId);
}

// ─── Detail ───────────────────────────────────────────────────────────────────

final photoDetailProvider =
    FutureProvider.family<PhotoEntity, String>((ref, id) async {
  return ref.watch(photoRepositoryProvider).getPhotoDetail(id);
});
