import 'package:authentication_repository/entities/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:collection/collection.dart';
part 'auth_response_entity.freezed.dart';
part 'auth_response_entity.g.dart';

@freezed
class AuthResponseEntity with _$AuthResponseEntity {
  factory AuthResponseEntity(
      {required String id,
      required String phone,
      String? referralCode,
      @JsonKey(fromJson: _numberToUserStatus) UserStatus? status,
      String? token}) = _AuthResponseEntity;
  factory AuthResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseEntityFromJson(json);
}

UserStatus? _numberToUserStatus(int? value) {
  if (value == null) {
    return null;
  }
  return UserStatus.values.elementAt(value - 1);
}
