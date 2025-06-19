// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeModel _$HomeModelFromJson(Map<String, dynamic> json) => _HomeModel(
  title: json['title'] as String,
  content: json['content'] as String,
  createdAt: json['created_at'] as String,
);

Map<String, dynamic> _$HomeModelToJson(_HomeModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'created_at': instance.createdAt,
    };
