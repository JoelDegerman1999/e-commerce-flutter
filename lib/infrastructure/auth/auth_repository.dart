import 'package:dio/dio.dart';
import 'package:e_commerce_bloc/domain/auth/email_address.dart';
import 'package:e_commerce_bloc/domain/auth/password.dart';
import 'package:e_commerce_bloc/domain/auth/token.dart';

class AuthRepository {
  final Dio dio;

  const AuthRepository(this.dio);

  final baseUrl = "https://iths-webshop.herokuapp.com/api/";

  Future<Token> login(EmailAddress emailAddress, Password password) async {
    var authUrl = baseUrl + "auth/login";
    try {
      final response = await dio.post(
        authUrl,
        data: {"username": emailAddress.value, "password": password.value},
      );
      final token = Token.fromMap(response.data as Map<String, dynamic>);
      return token;
    } on DioError catch (e) {
      print(e);
      return null;
    }
  }
}
