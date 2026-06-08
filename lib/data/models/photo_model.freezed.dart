// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PhotoModel _$PhotoModelFromJson(Map<String, dynamic> json) {
  return _PhotoModel.fromJson(json);
}

/// @nodoc
mixin _$PhotoModel {
  String get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'alt_description')
  String? get altDescription => throw _privateConstructorUsedError;
  PhotoUrlsModel get urls => throw _privateConstructorUsedError;
  PhotoUserModel get user => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'likes')
  int get likes => throw _privateConstructorUsedError;
  @JsonKey(name: 'color')
  String? get color => throw _privateConstructorUsedError;

  /// Serializes this PhotoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PhotoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PhotoModelCopyWith<PhotoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoModelCopyWith<$Res> {
  factory $PhotoModelCopyWith(
          PhotoModel value, $Res Function(PhotoModel) then) =
      _$PhotoModelCopyWithImpl<$Res, PhotoModel>;
  @useResult
  $Res call(
      {String id,
      String description,
      @JsonKey(name: 'alt_description') String? altDescription,
      PhotoUrlsModel urls,
      PhotoUserModel user,
      int width,
      int height,
      @JsonKey(name: 'likes') int likes,
      @JsonKey(name: 'color') String? color});

  $PhotoUrlsModelCopyWith<$Res> get urls;
  $PhotoUserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$PhotoModelCopyWithImpl<$Res, $Val extends PhotoModel>
    implements $PhotoModelCopyWith<$Res> {
  _$PhotoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PhotoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? altDescription = freezed,
    Object? urls = null,
    Object? user = null,
    Object? width = null,
    Object? height = null,
    Object? likes = null,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      altDescription: freezed == altDescription
          ? _value.altDescription
          : altDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as PhotoUrlsModel,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as PhotoUserModel,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of PhotoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PhotoUrlsModelCopyWith<$Res> get urls {
    return $PhotoUrlsModelCopyWith<$Res>(_value.urls, (value) {
      return _then(_value.copyWith(urls: value) as $Val);
    });
  }

  /// Create a copy of PhotoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PhotoUserModelCopyWith<$Res> get user {
    return $PhotoUserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PhotoModelImplCopyWith<$Res>
    implements $PhotoModelCopyWith<$Res> {
  factory _$$PhotoModelImplCopyWith(
          _$PhotoModelImpl value, $Res Function(_$PhotoModelImpl) then) =
      __$$PhotoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String description,
      @JsonKey(name: 'alt_description') String? altDescription,
      PhotoUrlsModel urls,
      PhotoUserModel user,
      int width,
      int height,
      @JsonKey(name: 'likes') int likes,
      @JsonKey(name: 'color') String? color});

  @override
  $PhotoUrlsModelCopyWith<$Res> get urls;
  @override
  $PhotoUserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$PhotoModelImplCopyWithImpl<$Res>
    extends _$PhotoModelCopyWithImpl<$Res, _$PhotoModelImpl>
    implements _$$PhotoModelImplCopyWith<$Res> {
  __$$PhotoModelImplCopyWithImpl(
      _$PhotoModelImpl _value, $Res Function(_$PhotoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PhotoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? altDescription = freezed,
    Object? urls = null,
    Object? user = null,
    Object? width = null,
    Object? height = null,
    Object? likes = null,
    Object? color = freezed,
  }) {
    return _then(_$PhotoModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      altDescription: freezed == altDescription
          ? _value.altDescription
          : altDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as PhotoUrlsModel,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as PhotoUserModel,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhotoModelImpl implements _PhotoModel {
  const _$PhotoModelImpl(
      {required this.id,
      this.description = '',
      @JsonKey(name: 'alt_description') this.altDescription,
      required this.urls,
      required this.user,
      required this.width,
      required this.height,
      @JsonKey(name: 'likes') this.likes = 0,
      @JsonKey(name: 'color') this.color});

  factory _$PhotoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey(name: 'alt_description')
  final String? altDescription;
  @override
  final PhotoUrlsModel urls;
  @override
  final PhotoUserModel user;
  @override
  final int width;
  @override
  final int height;
  @override
  @JsonKey(name: 'likes')
  final int likes;
  @override
  @JsonKey(name: 'color')
  final String? color;

  @override
  String toString() {
    return 'PhotoModel(id: $id, description: $description, altDescription: $altDescription, urls: $urls, user: $user, width: $width, height: $height, likes: $likes, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.altDescription, altDescription) ||
                other.altDescription == altDescription) &&
            (identical(other.urls, urls) || other.urls == urls) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, description, altDescription,
      urls, user, width, height, likes, color);

  /// Create a copy of PhotoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoModelImplCopyWith<_$PhotoModelImpl> get copyWith =>
      __$$PhotoModelImplCopyWithImpl<_$PhotoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoModelImplToJson(
      this,
    );
  }
}

abstract class _PhotoModel implements PhotoModel {
  const factory _PhotoModel(
      {required final String id,
      final String description,
      @JsonKey(name: 'alt_description') final String? altDescription,
      required final PhotoUrlsModel urls,
      required final PhotoUserModel user,
      required final int width,
      required final int height,
      @JsonKey(name: 'likes') final int likes,
      @JsonKey(name: 'color') final String? color}) = _$PhotoModelImpl;

  factory _PhotoModel.fromJson(Map<String, dynamic> json) =
      _$PhotoModelImpl.fromJson;

  @override
  String get id;
  @override
  String get description;
  @override
  @JsonKey(name: 'alt_description')
  String? get altDescription;
  @override
  PhotoUrlsModel get urls;
  @override
  PhotoUserModel get user;
  @override
  int get width;
  @override
  int get height;
  @override
  @JsonKey(name: 'likes')
  int get likes;
  @override
  @JsonKey(name: 'color')
  String? get color;

  /// Create a copy of PhotoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhotoModelImplCopyWith<_$PhotoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PhotoUrlsModel _$PhotoUrlsModelFromJson(Map<String, dynamic> json) {
  return _PhotoUrlsModel.fromJson(json);
}

/// @nodoc
mixin _$PhotoUrlsModel {
  String get raw => throw _privateConstructorUsedError;
  String get full => throw _privateConstructorUsedError;
  String get regular => throw _privateConstructorUsedError;
  String get small => throw _privateConstructorUsedError;
  String get thumb => throw _privateConstructorUsedError;

  /// Serializes this PhotoUrlsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PhotoUrlsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PhotoUrlsModelCopyWith<PhotoUrlsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoUrlsModelCopyWith<$Res> {
  factory $PhotoUrlsModelCopyWith(
          PhotoUrlsModel value, $Res Function(PhotoUrlsModel) then) =
      _$PhotoUrlsModelCopyWithImpl<$Res, PhotoUrlsModel>;
  @useResult
  $Res call(
      {String raw, String full, String regular, String small, String thumb});
}

/// @nodoc
class _$PhotoUrlsModelCopyWithImpl<$Res, $Val extends PhotoUrlsModel>
    implements $PhotoUrlsModelCopyWith<$Res> {
  _$PhotoUrlsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PhotoUrlsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? raw = null,
    Object? full = null,
    Object? regular = null,
    Object? small = null,
    Object? thumb = null,
  }) {
    return _then(_value.copyWith(
      raw: null == raw
          ? _value.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as String,
      full: null == full
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as String,
      regular: null == regular
          ? _value.regular
          : regular // ignore: cast_nullable_to_non_nullable
              as String,
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      thumb: null == thumb
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhotoUrlsModelImplCopyWith<$Res>
    implements $PhotoUrlsModelCopyWith<$Res> {
  factory _$$PhotoUrlsModelImplCopyWith(_$PhotoUrlsModelImpl value,
          $Res Function(_$PhotoUrlsModelImpl) then) =
      __$$PhotoUrlsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String raw, String full, String regular, String small, String thumb});
}

/// @nodoc
class __$$PhotoUrlsModelImplCopyWithImpl<$Res>
    extends _$PhotoUrlsModelCopyWithImpl<$Res, _$PhotoUrlsModelImpl>
    implements _$$PhotoUrlsModelImplCopyWith<$Res> {
  __$$PhotoUrlsModelImplCopyWithImpl(
      _$PhotoUrlsModelImpl _value, $Res Function(_$PhotoUrlsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PhotoUrlsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? raw = null,
    Object? full = null,
    Object? regular = null,
    Object? small = null,
    Object? thumb = null,
  }) {
    return _then(_$PhotoUrlsModelImpl(
      raw: null == raw
          ? _value.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as String,
      full: null == full
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as String,
      regular: null == regular
          ? _value.regular
          : regular // ignore: cast_nullable_to_non_nullable
              as String,
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      thumb: null == thumb
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhotoUrlsModelImpl implements _PhotoUrlsModel {
  const _$PhotoUrlsModelImpl(
      {required this.raw,
      required this.full,
      required this.regular,
      required this.small,
      required this.thumb});

  factory _$PhotoUrlsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoUrlsModelImplFromJson(json);

  @override
  final String raw;
  @override
  final String full;
  @override
  final String regular;
  @override
  final String small;
  @override
  final String thumb;

  @override
  String toString() {
    return 'PhotoUrlsModel(raw: $raw, full: $full, regular: $regular, small: $small, thumb: $thumb)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoUrlsModelImpl &&
            (identical(other.raw, raw) || other.raw == raw) &&
            (identical(other.full, full) || other.full == full) &&
            (identical(other.regular, regular) || other.regular == regular) &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.thumb, thumb) || other.thumb == thumb));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, raw, full, regular, small, thumb);

  /// Create a copy of PhotoUrlsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoUrlsModelImplCopyWith<_$PhotoUrlsModelImpl> get copyWith =>
      __$$PhotoUrlsModelImplCopyWithImpl<_$PhotoUrlsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoUrlsModelImplToJson(
      this,
    );
  }
}

abstract class _PhotoUrlsModel implements PhotoUrlsModel {
  const factory _PhotoUrlsModel(
      {required final String raw,
      required final String full,
      required final String regular,
      required final String small,
      required final String thumb}) = _$PhotoUrlsModelImpl;

  factory _PhotoUrlsModel.fromJson(Map<String, dynamic> json) =
      _$PhotoUrlsModelImpl.fromJson;

  @override
  String get raw;
  @override
  String get full;
  @override
  String get regular;
  @override
  String get small;
  @override
  String get thumb;

  /// Create a copy of PhotoUrlsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhotoUrlsModelImplCopyWith<_$PhotoUrlsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PhotoUserModel _$PhotoUserModelFromJson(Map<String, dynamic> json) {
  return _PhotoUserModel.fromJson(json);
}

/// @nodoc
mixin _$PhotoUserModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image')
  PhotoProfileImageModel get profileImage => throw _privateConstructorUsedError;

  /// Serializes this PhotoUserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PhotoUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PhotoUserModelCopyWith<PhotoUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoUserModelCopyWith<$Res> {
  factory $PhotoUserModelCopyWith(
          PhotoUserModel value, $Res Function(PhotoUserModel) then) =
      _$PhotoUserModelCopyWithImpl<$Res, PhotoUserModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String username,
      @JsonKey(name: 'profile_image') PhotoProfileImageModel profileImage});

  $PhotoProfileImageModelCopyWith<$Res> get profileImage;
}

/// @nodoc
class _$PhotoUserModelCopyWithImpl<$Res, $Val extends PhotoUserModel>
    implements $PhotoUserModelCopyWith<$Res> {
  _$PhotoUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PhotoUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? username = null,
    Object? profileImage = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as PhotoProfileImageModel,
    ) as $Val);
  }

  /// Create a copy of PhotoUserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PhotoProfileImageModelCopyWith<$Res> get profileImage {
    return $PhotoProfileImageModelCopyWith<$Res>(_value.profileImage, (value) {
      return _then(_value.copyWith(profileImage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PhotoUserModelImplCopyWith<$Res>
    implements $PhotoUserModelCopyWith<$Res> {
  factory _$$PhotoUserModelImplCopyWith(_$PhotoUserModelImpl value,
          $Res Function(_$PhotoUserModelImpl) then) =
      __$$PhotoUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String username,
      @JsonKey(name: 'profile_image') PhotoProfileImageModel profileImage});

  @override
  $PhotoProfileImageModelCopyWith<$Res> get profileImage;
}

/// @nodoc
class __$$PhotoUserModelImplCopyWithImpl<$Res>
    extends _$PhotoUserModelCopyWithImpl<$Res, _$PhotoUserModelImpl>
    implements _$$PhotoUserModelImplCopyWith<$Res> {
  __$$PhotoUserModelImplCopyWithImpl(
      _$PhotoUserModelImpl _value, $Res Function(_$PhotoUserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PhotoUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? username = null,
    Object? profileImage = null,
  }) {
    return _then(_$PhotoUserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as PhotoProfileImageModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhotoUserModelImpl implements _PhotoUserModel {
  const _$PhotoUserModelImpl(
      {required this.id,
      required this.name,
      required this.username,
      @JsonKey(name: 'profile_image') required this.profileImage});

  factory _$PhotoUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoUserModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String username;
  @override
  @JsonKey(name: 'profile_image')
  final PhotoProfileImageModel profileImage;

  @override
  String toString() {
    return 'PhotoUserModel(id: $id, name: $name, username: $username, profileImage: $profileImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoUserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, username, profileImage);

  /// Create a copy of PhotoUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoUserModelImplCopyWith<_$PhotoUserModelImpl> get copyWith =>
      __$$PhotoUserModelImplCopyWithImpl<_$PhotoUserModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoUserModelImplToJson(
      this,
    );
  }
}

abstract class _PhotoUserModel implements PhotoUserModel {
  const factory _PhotoUserModel(
          {required final String id,
          required final String name,
          required final String username,
          @JsonKey(name: 'profile_image')
          required final PhotoProfileImageModel profileImage}) =
      _$PhotoUserModelImpl;

  factory _PhotoUserModel.fromJson(Map<String, dynamic> json) =
      _$PhotoUserModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get username;
  @override
  @JsonKey(name: 'profile_image')
  PhotoProfileImageModel get profileImage;

  /// Create a copy of PhotoUserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhotoUserModelImplCopyWith<_$PhotoUserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PhotoProfileImageModel _$PhotoProfileImageModelFromJson(
    Map<String, dynamic> json) {
  return _PhotoProfileImageModel.fromJson(json);
}

/// @nodoc
mixin _$PhotoProfileImageModel {
  String get small => throw _privateConstructorUsedError;
  String get medium => throw _privateConstructorUsedError;
  String get large => throw _privateConstructorUsedError;

  /// Serializes this PhotoProfileImageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PhotoProfileImageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PhotoProfileImageModelCopyWith<PhotoProfileImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoProfileImageModelCopyWith<$Res> {
  factory $PhotoProfileImageModelCopyWith(PhotoProfileImageModel value,
          $Res Function(PhotoProfileImageModel) then) =
      _$PhotoProfileImageModelCopyWithImpl<$Res, PhotoProfileImageModel>;
  @useResult
  $Res call({String small, String medium, String large});
}

/// @nodoc
class _$PhotoProfileImageModelCopyWithImpl<$Res,
        $Val extends PhotoProfileImageModel>
    implements $PhotoProfileImageModelCopyWith<$Res> {
  _$PhotoProfileImageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PhotoProfileImageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = null,
    Object? medium = null,
    Object? large = null,
  }) {
    return _then(_value.copyWith(
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhotoProfileImageModelImplCopyWith<$Res>
    implements $PhotoProfileImageModelCopyWith<$Res> {
  factory _$$PhotoProfileImageModelImplCopyWith(
          _$PhotoProfileImageModelImpl value,
          $Res Function(_$PhotoProfileImageModelImpl) then) =
      __$$PhotoProfileImageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String small, String medium, String large});
}

/// @nodoc
class __$$PhotoProfileImageModelImplCopyWithImpl<$Res>
    extends _$PhotoProfileImageModelCopyWithImpl<$Res,
        _$PhotoProfileImageModelImpl>
    implements _$$PhotoProfileImageModelImplCopyWith<$Res> {
  __$$PhotoProfileImageModelImplCopyWithImpl(
      _$PhotoProfileImageModelImpl _value,
      $Res Function(_$PhotoProfileImageModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PhotoProfileImageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = null,
    Object? medium = null,
    Object? large = null,
  }) {
    return _then(_$PhotoProfileImageModelImpl(
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhotoProfileImageModelImpl implements _PhotoProfileImageModel {
  const _$PhotoProfileImageModelImpl(
      {required this.small, required this.medium, required this.large});

  factory _$PhotoProfileImageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoProfileImageModelImplFromJson(json);

  @override
  final String small;
  @override
  final String medium;
  @override
  final String large;

  @override
  String toString() {
    return 'PhotoProfileImageModel(small: $small, medium: $medium, large: $large)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoProfileImageModelImpl &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.large, large) || other.large == large));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, small, medium, large);

  /// Create a copy of PhotoProfileImageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoProfileImageModelImplCopyWith<_$PhotoProfileImageModelImpl>
      get copyWith => __$$PhotoProfileImageModelImplCopyWithImpl<
          _$PhotoProfileImageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoProfileImageModelImplToJson(
      this,
    );
  }
}

abstract class _PhotoProfileImageModel implements PhotoProfileImageModel {
  const factory _PhotoProfileImageModel(
      {required final String small,
      required final String medium,
      required final String large}) = _$PhotoProfileImageModelImpl;

  factory _PhotoProfileImageModel.fromJson(Map<String, dynamic> json) =
      _$PhotoProfileImageModelImpl.fromJson;

  @override
  String get small;
  @override
  String get medium;
  @override
  String get large;

  /// Create a copy of PhotoProfileImageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhotoProfileImageModelImplCopyWith<_$PhotoProfileImageModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
