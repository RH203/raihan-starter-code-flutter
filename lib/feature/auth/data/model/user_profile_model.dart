import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_schedule/feature/auth/domain/entity/user_profile.dart';

part 'user_profile_model.freezed.dart';
part 'user_profile_model.g.dart';

@freezed
class UserProfileModel with _$UserProfileModel {
  factory UserProfileModel({
    required String firstName,
    required String lastName,
    required String avatar,
    required String phone,
  }) = _UserProfileModel;

  factory UserProfileModel.fromJson(Map<String, Object?> json) =>
      _$UserProfileModelFromJson(json);

  UserProfile toEntity() {
    return UserProfile(
      firstName: firstName,
      lastName: lastName,
      avatar: avatar,
      phone: phone,
    );
  }
}
