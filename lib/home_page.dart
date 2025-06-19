import 'package:flutter/material.dart';
import 'package:flutter_api_laravel/perstions/bloc/home_bloc.dart';
import 'package:flutter_api_laravel/perstions/models/get_data/home_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget _buildMovies(List<HomeModel> movies) => ListView.builder(
    itemCount: movies.length,
    itemBuilder: (context, index) => ListTile(
      title: Text(movies[index].title),
      subtitle: Text(movies[index].content),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder(
          bloc: HomeBloc()..add(HomeFetchEvent()),
          builder: (context, state) {
            switch (state.runtimeType) {
              case HomeInitial:
              case HomeLoading:
                return const Center(child: CircularProgressIndicator());
              case HomeSuccess:
                var movies = (state as HomeSuccess).home;
                return _buildMovies(movies);
              case HomeFailure:
                var errorMessage = (state as HomeFailure).errorMessage;
                return Center(child: Text(errorMessage));
              default:
                return Container();
            }
          },
        ),
      ),
    );
  }
}
