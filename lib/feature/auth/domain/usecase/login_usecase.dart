import 'package:injectable/injectable.dart';
import 'package:my_schedule/feature/auth/domain/entity/user.dart';
import 'package:my_schedule/feature/auth/domain/repositories/auth_repositories.dart';

@injectable
class LoginUsecase {
  final AuthRepositories authRepositories;

  LoginUsecase(this.authRepositories);

  Future<User> call(String email, String password) async {
    return authRepositories.login(email, password);
  }
}
