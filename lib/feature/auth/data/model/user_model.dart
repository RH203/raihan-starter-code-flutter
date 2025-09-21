import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_schedule/feature/auth/data/model/user_profile_model.dart';
import 'package:my_schedule/feature/auth/domain/entity/user.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    required String email,
    required String token,
    required UserProfileModel userProfileModel,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, Object?> json) =>
      _$UserModelFromJson(json);

  User toEntity() {
    return User(email: email, userProfile: userProfileModel.toEntity());
  }
}
