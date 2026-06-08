// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PhotoModelImpl _$$PhotoModelImplFromJson(Map<String, dynamic> json) =>
    _$PhotoModelImpl(
      id: json['id'] as String,
      description: json['description'] as String? ?? '',
      altDescription: json['alt_description'] as String?,
      urls: PhotoUrlsModel.fromJson(json['urls'] as Map<String, dynamic>),
      user: PhotoUserModel.fromJson(json['user'] as Map<String, dynamic>),
      width: (json['width'] as num).toInt(),
      height: (json['height'] as num).toInt(),
      likes: (json['likes'] as num?)?.toInt() ?? 0,
      color: json['color'] as String?,
    );

Map<String, dynamic> _$$PhotoModelImplToJson(_$PhotoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'alt_description': instance.altDescription,
      'urls': instance.urls,
      'user': instance.user,
      'width': instance.width,
      'height': instance.height,
      'likes': instance.likes,
      'color': instance.color,
    };

_$PhotoUrlsModelImpl _$$PhotoUrlsModelImplFromJson(Map<String, dynamic> json) =>
    _$PhotoUrlsModelImpl(
      raw: json['raw'] as String,
      full: json['full'] as String,
      regular: json['regular'] as String,
      small: json['small'] as String,
      thumb: json['thumb'] as String,
    );

Map<String, dynamic> _$$PhotoUrlsModelImplToJson(
        _$PhotoUrlsModelImpl instance) =>
    <String, dynamic>{
      'raw': instance.raw,
      'full': instance.full,
      'regular': instance.regular,
      'small': instance.small,
      'thumb': instance.thumb,
    };

_$PhotoUserModelImpl _$$PhotoUserModelImplFromJson(Map<String, dynamic> json) =>
    _$PhotoUserModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      username: json['username'] as String,
      profileImage: PhotoProfileImageModel.fromJson(
          json['profile_image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PhotoUserModelImplToJson(
        _$PhotoUserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'profile_image': instance.profileImage,
    };

_$PhotoProfileImageModelImpl _$$PhotoProfileImageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PhotoProfileImageModelImpl(
      small: json['small'] as String,
      medium: json['medium'] as String,
      large: json['large'] as String,
    );

Map<String, dynamic> _$$PhotoProfileImageModelImplToJson(
        _$PhotoProfileImageModelImpl instance) =>
    <String, dynamic>{
      'small': instance.small,
      'medium': instance.medium,
      'large': instance.large,
    };
