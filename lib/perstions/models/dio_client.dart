import 'package:dio/dio.dart';
import 'package:flutter_api_laravel/perstions/models/auth_interceptor.dart';

class DioClient {
  static const String _baseUrl = "http://127.0.0.1:8000/api/";

  DioClient() {
    addInterceptor(LogInterceptor());
  }

  final Dio dio = Dio(BaseOptions(baseUrl: _baseUrl));

  void addInterceptor(Interceptor interceptor) {
    dio.interceptors.add(AuthInterceptor(dio: dio));
    dio.interceptors.add(interceptor);
  }
}
