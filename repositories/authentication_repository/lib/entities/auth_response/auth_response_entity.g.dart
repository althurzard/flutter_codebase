// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthResponseEntity _$$_AuthResponseEntityFromJson(
        Map<String, dynamic> json) =>
    _$_AuthResponseEntity(
      id: json['id'] as String,
      phone: json['phone'] as String,
      referralCode: json['referralCode'] as String?,
      status: _numberToUserStatus(json['status'] as int?),
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$_AuthResponseEntityToJson(
        _$_AuthResponseEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone': instance.phone,
      'referralCode': instance.referralCode,
      'status': _$UserStatusEnumMap[instance.status],
      'token': instance.token,
    };

const _$UserStatusEnumMap = {
  UserStatus.draft: 'draft',
  UserStatus.requesting: 'requesting',
  UserStatus.active: 'active',
  UserStatus.deaactive: 'deaactive',
};
