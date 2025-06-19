// part of 'home_bloc.dart';

// @freezed
// class HomeState with _$HomeState {
//   const factory HomeState.initial() = _Initial;
// }
part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeLoading extends HomeState {}

final class HomeSuccess extends HomeState {
  final List<HomeModel> home;

  HomeSuccess({required this.home});
}

final class HomeFailure extends HomeState {
  final String errorMessage;

  HomeFailure({required this.errorMessage});
}
