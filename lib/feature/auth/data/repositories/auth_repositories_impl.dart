import 'package:injectable/injectable.dart';
import 'package:my_schedule/feature/auth/data/datasource/remote/auth_data_source.dart';
import 'package:my_schedule/feature/auth/domain/entity/user.dart';
import 'package:my_schedule/feature/auth/domain/repositories/auth_repositories.dart';

@LazySingleton(as: AuthRepositories)
class AuthRepositoriesImpl implements AuthRepositories {
  final AuthDataSource authDataSource;

  @override
  Future<User> login(String email, String password) async {
    final model = await authDataSource.login(email, password);
    return model.toEntity();
  }
}
