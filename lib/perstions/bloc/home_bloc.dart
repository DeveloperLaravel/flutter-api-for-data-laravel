import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_api_laravel/perstions/models/dio_client.dart';
import 'package:flutter_api_laravel/perstions/models/get_data/home_model.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeFetchEvent>(onHomeFetchEvent);
  }

  FutureOr<void> onHomeFetchEvent(
    HomeFetchEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(HomeLoading());
    try {
      var client = DioClient();
      await client.dio
          .get("movie/byYear/2012/")
          .then((value) {
            List<HomeModel> movies = (value.data["results"] as List<dynamic>)
                .map((x) => HomeModel.fromJson(x))
                .toList();
            emit(HomeSuccess(home: movies));
          })
          .catchError((error) {
            emit(HomeFailure(errorMessage: error.toString()));
          });
    } catch (e) {
      emit(HomeFailure(errorMessage: e.toString()));
    }
  }
}
