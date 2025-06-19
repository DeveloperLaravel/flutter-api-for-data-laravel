// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeModel _$HomeModelFromJson(Map<String, dynamic> json) => _HomeModel(
  todo: json['todo'] as String,
  completed: json['completed'] as bool,
  userId: (json['userId'] as num).toInt(),
);

Map<String, dynamic> _$HomeModelToJson(_HomeModel instance) =>
    <String, dynamic>{
      'todo': instance.todo,
      'completed': instance.completed,
      'userId': instance.userId,
    };
