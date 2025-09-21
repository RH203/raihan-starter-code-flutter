// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../feature/auth/data/repositories/auth_repositories_impl.dart'
    as _i1015;
import '../../feature/auth/domain/repositories/auth_repositories.dart' as _i499;
import '../../feature/auth/domain/usecase/login_usecase.dart' as _i460;
import 'module/injectable_module.dart' as _i467;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final injectableModules = _$InjectableModules();
    gh.lazySingleton<_i361.Dio>(() => injectableModules.dio);
    gh.lazySingleton<_i499.AuthRepositories>(
      () => _i1015.AuthRepositoriesImpl(),
    );
    gh.factory<_i460.LoginUsecase>(
      () => _i460.LoginUsecase(gh<_i499.AuthRepositories>()),
    );
    return this;
  }
}

class _$InjectableModules extends _i467.InjectableModules {}
