import 'package:equatable/equatable.dart';
import 'package:my_schedule/feature/auth/domain/entity/user_profile.dart';

class User extends Equatable {
  final String email;
  final UserProfile userProfile;

  const User({required this.email, required this.userProfile});

  @override
  List<Object> get props => [email, userProfile];
}
