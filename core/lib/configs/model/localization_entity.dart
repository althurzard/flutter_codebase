import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'localization_entity.freezed.dart';
part 'localization_entity.g.dart';

@freezed
class LocalizationEntity with _$LocalizationEntity {
  factory LocalizationEntity({required String en, required String vi}) =
      _LocalizationEntity;
  factory LocalizationEntity.fromJson(Map<String, dynamic> json) =>
      _$LocalizationEntityFromJson(json);
}
