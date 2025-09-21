import 'package:injectable/injectable.dart';
import 'package:my_schedule/feature/auth/data/datasource/remote/auth_data_source.dart';
import 'package:my_schedule/feature/auth/data/model/user_model.dart';
import 'package:my_schedule/feature/auth/domain/repositories/auth_repositories.dart';

@LazySingleton(as: AuthRepositories)
class AuthRepositoriesImpl implements AuthRepositories {
  final AuthDataSource authDataSource;

  @override
  Future<UserModel> login(String email, String password) async {
    return authDataSource.login(email, password);
  }
}
