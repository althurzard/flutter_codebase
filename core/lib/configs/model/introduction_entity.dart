import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'localization_entity.dart';
part 'introduction_entity.freezed.dart';
part 'introduction_entity.g.dart';

@freezed
class IntroductionEntity with _$IntroductionEntity {
  factory IntroductionEntity(
      {required LocalizationEntity title,
      required LocalizationEntity description,
      required String imageURL}) = _IntroductionEntity;
  factory IntroductionEntity.fromJson(Map<String, dynamic> json) =>
      _$IntroductionEntityFromJson(json);
}
