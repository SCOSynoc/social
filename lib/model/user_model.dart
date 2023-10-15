import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

/// user data class created with freezed package

@freezed
class UserModel with _$UserModel {

  const factory UserModel({
    required String name,
  required String userId,
  required String? profilePic,
  required String? mobile,
  required List<String> following,
  required List<String> followers,
  required String? about,
  }) = _UserModel;
  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}