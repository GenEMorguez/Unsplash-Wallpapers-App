// lib/data/datasources/photo_local_datasource.dart

import 'package:shared_preferences/shared_preferences.dart';
import '../../core/constants/app_constants.dart';

abstract class PhotoLocalDataSource {
  Future<List<String>> getFavorites();
  Future<void> saveFavorite(String photoId);
  Future<void> removeFavorite(String photoId);
  Future<bool> isFavorite(String photoId);
  Future<bool> getDarkMode();
  Future<void> setDarkMode(bool isDark);
}

class PhotoLocalDataSourceImpl implements PhotoLocalDataSource {
  final SharedPreferences _prefs;
  const PhotoLocalDataSourceImpl(this._prefs);

  @override
  Future<List<String>> getFavorites() async =>
      _prefs.getStringList(AppConstants.favoritesKey) ?? [];

  @override
  Future<void> saveFavorite(String photoId) async {
    final favs = await getFavorites();
    if (!favs.contains(photoId)) {
      favs.add(photoId);
      await _prefs.setStringList(AppConstants.favoritesKey, favs);
    }
  }

  @override
  Future<void> removeFavorite(String photoId) async {
    final favs = await getFavorites();
    favs.remove(photoId);
    await _prefs.setStringList(AppConstants.favoritesKey, favs);
  }

  @override
  Future<bool> isFavorite(String photoId) async {
    final favs = await getFavorites();
    return favs.contains(photoId);
  }

  @override
  Future<bool> getDarkMode() async =>
      _prefs.getBool(AppConstants.themeKey) ?? false;

  @override
  Future<void> setDarkMode(bool isDark) async =>
      _prefs.setBool(AppConstants.themeKey, isDark);
}
