// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'introduction_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IntroductionEntity _$$_IntroductionEntityFromJson(
        Map<String, dynamic> json) =>
    _$_IntroductionEntity(
      title: LocalizationEntity.fromJson(json['title'] as Map<String, dynamic>),
      description: LocalizationEntity.fromJson(
          json['description'] as Map<String, dynamic>),
      imageURL: json['imageURL'] as String,
    );

Map<String, dynamic> _$$_IntroductionEntityToJson(
        _$_IntroductionEntity instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'imageURL': instance.imageURL,
    };
