import 'package:dio/dio.dart';
import 'package:my_schedule/app_bloc.dart';
import 'package:my_schedule/feature/auth/data/model/user_model.dart';

class AuthDataSource {
  final Dio dio;

  AuthDataSource(this.dio);

  Future<UserModel> login(String email, String password) async {
    try {
      final response = await dio.post(
        '/auth/api/login',
        data: {'email': email, 'password': password},
        options: Options(headers: {'Content-Type': 'application/json'}),
      );

      // Ambil JSON response
      final data = response.data;
      AppLogger.info(data);

      return UserModel.fromJson(data);
    } on DioException catch (e) {
      // error dari Dio (misal timeout, 4xx, 5xx)
      final msg = e.response?.data?['message'] ?? e.message;
      throw Exception('Login failed: $msg');
    } catch (e) {
      throw Exception('Unexpected error: $e');
    }
  }
}
