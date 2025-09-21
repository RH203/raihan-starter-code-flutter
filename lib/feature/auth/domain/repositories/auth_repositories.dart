import 'package:my_schedule/feature/auth/domain/entity/user.dart';

abstract class AuthRepositories {
  Future<User> login(String email, String password);
}
