import 'package:flutter_api_laravel/perstions/home/data/api/api_respones.dart';
import 'package:flutter_api_laravel/perstions/home/models/get_data/home_model.dart';

abstract class Api {
  Future<List<HomeModel>> get();
  Future<ApiRespones> delete(String endPoint);
  Future<ApiRespones> post(String endPoint, Map obbj);
  Future<ApiRespones> patch(String endPoint, Map obbj);
  Future<ApiRespones> put(String endPoint, Map obbj);
}
