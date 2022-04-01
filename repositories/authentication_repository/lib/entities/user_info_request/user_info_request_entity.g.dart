// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_request_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserInfoRequestEntity _$$_UserInfoRequestEntityFromJson(
        Map<String, dynamic> json) =>
    _$_UserInfoRequestEntity(
      fullname: json['fullname'] as String,
      birthday: json['birthday'] as String,
      gender: json['gender'] as int,
      identityNo: json['identityNo'] as String,
      positionId: json['positionId'] as int,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$_UserInfoRequestEntityToJson(
        _$_UserInfoRequestEntity instance) =>
    <String, dynamic>{
      'fullname': instance.fullname,
      'birthday': instance.birthday,
      'gender': instance.gender,
      'identityNo': instance.identityNo,
      'positionId': instance.positionId,
      'email': instance.email,
    };
