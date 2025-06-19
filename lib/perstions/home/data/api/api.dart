import 'package:flutter_api_laravel/perstions/home/data/api/api_respones.dart';

abstract class Api {
  Future<ApiRespones> get(String endPoint);
  Future<ApiRespones> delete(String endPoint);
  Future<ApiRespones> post(String endPoint, Map obbj);
  Future<ApiRespones> patch(String endPoint, Map obbj);
  Future<ApiRespones> put(String endPoint, Map obbj);
}
