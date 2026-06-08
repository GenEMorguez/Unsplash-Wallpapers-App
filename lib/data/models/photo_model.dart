// lib/data/models/photo_model.dart
// Ejecutar: flutter pub run build_runner build --delete-conflicting-outputs

import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_model.freezed.dart';
part 'photo_model.g.dart';

@freezed
class PhotoModel with _$PhotoModel {
  const factory PhotoModel({
    required String id,
    @Default('') String description,
    @JsonKey(name: 'alt_description') String? altDescription,
    required PhotoUrlsModel urls,
    required PhotoUserModel user,
    required int width,
    required int height,
    @JsonKey(name: 'likes') @Default(0) int likes,
    @JsonKey(name: 'color') String? color,
  }) = _PhotoModel;

  factory PhotoModel.fromJson(Map<String, dynamic> json) =>
      _$PhotoModelFromJson(json);
}

extension PhotoModelX on PhotoModel {
  String get displayDescription =>
      description.isNotEmpty ? description : (altDescription ?? 'Sin descripción');
  
  double get aspectRatio => width / height;
}

@freezed
class PhotoUrlsModel with _$PhotoUrlsModel {
  const factory PhotoUrlsModel({
    required String raw,
    required String full,
    required String regular,
    required String small,
    required String thumb,
  }) = _PhotoUrlsModel;

  factory PhotoUrlsModel.fromJson(Map<String, dynamic> json) =>
      _$PhotoUrlsModelFromJson(json);
}

@freezed
class PhotoUserModel with _$PhotoUserModel {
  const factory PhotoUserModel({
    required String id,
    required String name,
    required String username,
    @JsonKey(name: 'profile_image') required PhotoProfileImageModel profileImage,
  }) = _PhotoUserModel;

  factory PhotoUserModel.fromJson(Map<String, dynamic> json) =>
      _$PhotoUserModelFromJson(json);
}

@freezed
class PhotoProfileImageModel with _$PhotoProfileImageModel {
  const factory PhotoProfileImageModel({
    required String small,
    required String medium,
    required String large,
  }) = _PhotoProfileImageModel;

  factory PhotoProfileImageModel.fromJson(Map<String, dynamic> json) =>
      _$PhotoProfileImageModelFromJson(json);
}
