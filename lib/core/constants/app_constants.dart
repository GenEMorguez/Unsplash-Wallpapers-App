// lib/core/constants/app_constants.dart

class AppConstants {
  AppConstants._();

  static const String baseUrl = 'https://api.unsplash.com';
  static const String accessKey = 'KWpfGuTnD_1PPr0xC5WztkxAInVSJ-PbAji4mqvdRZQ';
  static const int pageSize = 20;
  static const Duration connectTimeout = Duration(seconds: 10);
  static const Duration receiveTimeout = Duration(seconds: 15);

  static const String themeKey = 'is_dark_mode';
  static const String favoritesKey = 'favorites_list';

  static const List<String> popularCategories = [
    'nature', 'architecture', 'travel', 'animals',
    'food', 'technology', 'space', 'ocean',
    'mountains', 'city', 'flowers', 'abstract',
  ];
}
