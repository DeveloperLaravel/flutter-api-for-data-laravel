import 'package:dio/dio.dart';
import 'package:flutter_api_laravel/perstions/home/data/api/api.dart';
import 'package:flutter_api_laravel/perstions/home/data/api/api_respones.dart';
import 'package:flutter_api_laravel/perstions/home/data/dio/string_data.dart';

class DioApi implements Api {
  Dio dio = Dio(BaseOptions(baseUrl: StringData.baseUrl));
  @override
  Future<ApiRespones> delete(String endPoint) async {
    ApiRespones apiRespones = ApiRespones();
    try {
      Response response = await dio.delete(endPoint);
      apiRespones.statusCode = response.statusCode;
    } on DioException catch (e) {
      apiRespones.isError = true;
    }
    return apiRespones;
  }

  @override
  Future<ApiRespones> get(String endPoint) async {
    ApiRespones apiRespones = ApiRespones();
    try {
      Response response = await dio.get(endPoint);
      apiRespones.statusCode = response.statusCode;
      apiRespones.body = response.data;
    } on DioException catch (e) {
      apiRespones.isError = true;
    }

    return apiRespones;
  }

  @override
  Future<ApiRespones> patch(String endPoint, Map data) async {
    ApiRespones apiRespones = ApiRespones();
    try {
      Response response = await dio.patch(endPoint, data: data);
      apiRespones.statusCode = response.statusCode;
      apiRespones.body = response.data;
    } on DioException catch (e) {
      apiRespones.isError = true;
    }
    return apiRespones;
  }

  @override
  Future<ApiRespones> post(String endPoint, Map data) async {
    ApiRespones apiRespones = ApiRespones();
    try {
      Response response = await dio.post(endPoint, data: data);
      apiRespones.statusCode = response.statusCode;
      apiRespones.body = response.data;
    } on DioException catch (e) {
      apiRespones.isError = true;
    }
    return apiRespones;
  }

  @override
  Future<ApiRespones> put(String endPoint, Map data) async {
    ApiRespones apiRespones = ApiRespones();
    try {
      Response response = await dio.put(endPoint, data: data);
      apiRespones.statusCode = response.statusCode;
      apiRespones.body = response.data;
    } on DioException catch (e) {
      apiRespones.isError = true;
    }
    return apiRespones;
  }
}
