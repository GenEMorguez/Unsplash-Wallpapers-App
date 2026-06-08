// lib/data/repositories/photo_repository_impl.dart

import '../datasources/photo_remote_datasource.dart';
import '../datasources/photo_local_datasource.dart';
import '../models/photo_model.dart';

// ─── Entidades ────────────────────────────────────────────────────────────────

class PhotoEntity {
  final String id;
  final String description;
  final String thumbUrl;
  final String regularUrl;
  final String fullUrl;
  final String photographerName;
  final String photographerUsername;
  final String photographerAvatar;
  final int likes;
  final String? color;
  final int width;
  final int height;

  const PhotoEntity({
    required this.id,
    required this.description,
    required this.thumbUrl,
    required this.regularUrl,
    required this.fullUrl,
    required this.photographerName,
    required this.photographerUsername,
    required this.photographerAvatar,
    required this.likes,
    this.color,
    required this.width,
    required this.height,
  });

  double get aspectRatio => width / height;
}

// ─── Contrato ─────────────────────────────────────────────────────────────────

abstract class PhotoRepository {
  Future<List<PhotoEntity>> getPhotos({required int page});
  Future<List<PhotoEntity>> searchPhotos({
    required String query,
    required int page,
  });
  Future<PhotoEntity> getPhotoDetail(String id);
  Future<List<String>> getFavorites();
  Future<void> toggleFavorite(String photoId);
  Future<bool> isFavorite(String photoId);
  Future<bool> getDarkMode();
  Future<void> setDarkMode(bool isDark);
}

// ─── Implementación ──────────────────────────────────────────────────────────

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoRemoteDataSource _remote;
  final PhotoLocalDataSource _local;

  const PhotoRepositoryImpl({
    required PhotoRemoteDataSource remote,
    required PhotoLocalDataSource local,
  })  : _remote = remote,
        _local = local;

  PhotoEntity _toEntity(PhotoModel m) => PhotoEntity(
        id: m.id,
        description: m.displayDescription,
        thumbUrl: m.urls.thumb,
        regularUrl: m.urls.regular,
        fullUrl: m.urls.full,
        photographerName: m.user.name,
        photographerUsername: m.user.username,
        photographerAvatar: m.user.profileImage.medium,
        likes: m.likes,
        color: m.color,
        width: m.width,
        height: m.height,
      );

  @override
  Future<List<PhotoEntity>> getPhotos({required int page}) async {
    final models = await _remote.getPhotos(page: page);
    return models.map(_toEntity).toList();
  }

  @override
  Future<List<PhotoEntity>> searchPhotos({
    required String query,
    required int page,
  }) async {
    final models = await _remote.searchPhotos(query: query, page: page);
    return models.map(_toEntity).toList();
  }

  @override
  Future<PhotoEntity> getPhotoDetail(String id) async {
    final model = await _remote.getPhotoDetail(id);
    return _toEntity(model);
  }

  @override
  Future<List<String>> getFavorites() => _local.getFavorites();

  @override
  Future<void> toggleFavorite(String photoId) async {
    final isFav = await _local.isFavorite(photoId);
    if (isFav) {
      await _local.removeFavorite(photoId);
    } else {
      await _local.saveFavorite(photoId);
    }
  }

  @override
  Future<bool> isFavorite(String photoId) => _local.isFavorite(photoId);

  @override
  Future<bool> getDarkMode() => _local.getDarkMode();

  @override
  Future<void> setDarkMode(bool isDark) => _local.setDarkMode(isDark);
}
