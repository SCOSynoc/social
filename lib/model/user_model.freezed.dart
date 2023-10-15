// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String get name => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String? get profilePic => throw _privateConstructorUsedError;
  String? get mobile => throw _privateConstructorUsedError;
  List<String> get following => throw _privateConstructorUsedError;
  List<String> get followers => throw _privateConstructorUsedError;
  String? get about => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {String name,
      String userId,
      String? profilePic,
      String? mobile,
      List<String> following,
      List<String> followers,
      String? about});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? userId = null,
    Object? profilePic = freezed,
    Object? mobile = freezed,
    Object? following = null,
    Object? followers = null,
    Object? about = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      following: null == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as List<String>,
      followers: null == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String userId,
      String? profilePic,
      String? mobile,
      List<String> following,
      List<String> followers,
      String? about});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? userId = null,
    Object? profilePic = freezed,
    Object? mobile = freezed,
    Object? following = null,
    Object? followers = null,
    Object? about = freezed,
  }) {
    return _then(_$UserModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      following: null == following
          ? _value._following
          : following // ignore: cast_nullable_to_non_nullable
              as List<String>,
      followers: null == followers
          ? _value._followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {required this.name,
      required this.userId,
      required this.profilePic,
      required this.mobile,
      required final List<String> following,
      required final List<String> followers,
      required this.about})
      : _following = following,
        _followers = followers;

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final String name;
  @override
  final String userId;
  @override
  final String? profilePic;
  @override
  final String? mobile;
  final List<String> _following;
  @override
  List<String> get following {
    if (_following is EqualUnmodifiableListView) return _following;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_following);
  }

  final List<String> _followers;
  @override
  List<String> get followers {
    if (_followers is EqualUnmodifiableListView) return _followers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_followers);
  }

  @override
  final String? about;

  @override
  String toString() {
    return 'UserModel(name: $name, userId: $userId, profilePic: $profilePic, mobile: $mobile, following: $following, followers: $followers, about: $about)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            const DeepCollectionEquality()
                .equals(other._following, _following) &&
            const DeepCollectionEquality()
                .equals(other._followers, _followers) &&
            (identical(other.about, about) || other.about == about));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      userId,
      profilePic,
      mobile,
      const DeepCollectionEquality().hash(_following),
      const DeepCollectionEquality().hash(_followers),
      about);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {required final String name,
      required final String userId,
      required final String? profilePic,
      required final String? mobile,
      required final List<String> following,
      required final List<String> followers,
      required final String? about}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  String get name;
  @override
  String get userId;
  @override
  String? get profilePic;
  @override
  String? get mobile;
  @override
  List<String> get following;
  @override
  List<String> get followers;
  @override
  String? get about;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
