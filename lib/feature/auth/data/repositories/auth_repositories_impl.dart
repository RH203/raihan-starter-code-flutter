import 'package:injectable/injectable.dart';
import 'package:my_schedule/feature/auth/domain/entity/User.dart';
import 'package:my_schedule/feature/auth/domain/repositories/auth_repositories.dart';

@LazySingleton(as: AuthRepositories)
class AuthRepositoriesImpl implements AuthRepositories {
  @override
  Future<User> login(String email, String password) {}
}
