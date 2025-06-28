part of 'home_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = _Loading;
  const factory HomeState.next(T data) = _Next<T>;
  const factory HomeState.error(Error error) = _Error;
}
