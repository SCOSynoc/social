// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      name: json['name'] as String,
      userId: json['userId'] as String,
      profilePic: json['profilePic'] as String?,
      mobile: json['mobile'] as String?,
      following:
          (json['following'] as List<dynamic>).map((e) => e as String).toList(),
      followers:
          (json['followers'] as List<dynamic>).map((e) => e as String).toList(),
      about: json['about'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'userId': instance.userId,
      'profilePic': instance.profilePic,
      'mobile': instance.mobile,
      'following': instance.following,
      'followers': instance.followers,
      'about': instance.about,
    };
