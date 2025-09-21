import 'package:freezed_annotation/freezed_annotation.dart';

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
}
