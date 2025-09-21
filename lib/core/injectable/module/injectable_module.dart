import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class InjectableModules {
  @lazySingleton
  Dio get dio => Dio(BaseOptions(baseUrl: 'http://127.0.0.1:8000/api'));
}
