import 'package:authentication_repository/entities/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:collection/collection.dart';
part 'user_info_request_entity.freezed.dart';
part 'user_info_request_entity.g.dart';

@freezed
class UserInfoRequestEntity with _$UserInfoRequestEntity {
  factory UserInfoRequestEntity(
      {required String fullname,
      required String birthday,
      required int gender,
      required String identityNo,
      required int positionId,
      String? email}) = _UserInfoRequestEntity;
  factory UserInfoRequestEntity.fromJson(Map<String, dynamic> json) =>
      _$UserInfoRequestEntityFromJson(json);
}
