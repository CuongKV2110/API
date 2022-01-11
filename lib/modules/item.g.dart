// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      json['id'] as int,
      json['league'] as String,
      json['club'] as String,
      json['urlImage'] as String,
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'id': instance.id,
      'league': instance.league,
      'club': instance.club,
      'urlImage': instance.urlImage,
    };
