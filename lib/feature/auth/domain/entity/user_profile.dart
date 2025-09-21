import 'package:equatable/equatable.dart';

class UserProfile extends Equatable {
  final String firstName;
  final String lastName;
  final String avatar;
  final String phone;

  const UserProfile({
    required this.firstName,
    required this.lastName,
    required this.avatar,
    required this.phone,
  });

  @override
  List<Object> get props => [firstName, lastName, avatar, phone];
}
