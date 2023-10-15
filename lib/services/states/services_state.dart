import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social/model/user_model.dart';

part 'services_state.freezed.dart';

@freezed
class ServicesState with _$ServicesState {
  const factory ServicesState() = _Initial;

  const factory ServicesState.loading() = _Loading;

  const factory ServicesState.success(UserModel userModel) = _Success;

  const factory ServicesState.error(String message) = _Error;
}
