// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthResponseEntity _$AuthResponseEntityFromJson(Map<String, dynamic> json) {
  return _AuthResponseEntity.fromJson(json);
}

/// @nodoc
class _$AuthResponseEntityTearOff {
  const _$AuthResponseEntityTearOff();

  _AuthResponseEntity call(
      {required String id,
      required String phone,
      String? referralCode,
      @JsonKey(fromJson: _numberToUserStatus) UserStatus? status,
      String? token}) {
    return _AuthResponseEntity(
      id: id,
      phone: phone,
      referralCode: referralCode,
      status: status,
      token: token,
    );
  }

  AuthResponseEntity fromJson(Map<String, Object?> json) {
    return AuthResponseEntity.fromJson(json);
  }
}

/// @nodoc
const $AuthResponseEntity = _$AuthResponseEntityTearOff();

/// @nodoc
mixin _$AuthResponseEntity {
  String get id => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String? get referralCode => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _numberToUserStatus)
  UserStatus? get status => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthResponseEntityCopyWith<AuthResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthResponseEntityCopyWith<$Res> {
  factory $AuthResponseEntityCopyWith(
          AuthResponseEntity value, $Res Function(AuthResponseEntity) then) =
      _$AuthResponseEntityCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String phone,
      String? referralCode,
      @JsonKey(fromJson: _numberToUserStatus) UserStatus? status,
      String? token});
}

/// @nodoc
class _$AuthResponseEntityCopyWithImpl<$Res>
    implements $AuthResponseEntityCopyWith<$Res> {
  _$AuthResponseEntityCopyWithImpl(this._value, this._then);

  final AuthResponseEntity _value;
  // ignore: unused_field
  final $Res Function(AuthResponseEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? phone = freezed,
    Object? referralCode = freezed,
    Object? status = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      referralCode: referralCode == freezed
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserStatus?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AuthResponseEntityCopyWith<$Res>
    implements $AuthResponseEntityCopyWith<$Res> {
  factory _$AuthResponseEntityCopyWith(
          _AuthResponseEntity value, $Res Function(_AuthResponseEntity) then) =
      __$AuthResponseEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String phone,
      String? referralCode,
      @JsonKey(fromJson: _numberToUserStatus) UserStatus? status,
      String? token});
}

/// @nodoc
class __$AuthResponseEntityCopyWithImpl<$Res>
    extends _$AuthResponseEntityCopyWithImpl<$Res>
    implements _$AuthResponseEntityCopyWith<$Res> {
  __$AuthResponseEntityCopyWithImpl(
      _AuthResponseEntity _value, $Res Function(_AuthResponseEntity) _then)
      : super(_value, (v) => _then(v as _AuthResponseEntity));

  @override
  _AuthResponseEntity get _value => super._value as _AuthResponseEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? phone = freezed,
    Object? referralCode = freezed,
    Object? status = freezed,
    Object? token = freezed,
  }) {
    return _then(_AuthResponseEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      referralCode: referralCode == freezed
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserStatus?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthResponseEntity
    with DiagnosticableTreeMixin
    implements _AuthResponseEntity {
  _$_AuthResponseEntity(
      {required this.id,
      required this.phone,
      this.referralCode,
      @JsonKey(fromJson: _numberToUserStatus) this.status,
      this.token});

  factory _$_AuthResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$$_AuthResponseEntityFromJson(json);

  @override
  final String id;
  @override
  final String phone;
  @override
  final String? referralCode;
  @override
  @JsonKey(fromJson: _numberToUserStatus)
  final UserStatus? status;
  @override
  final String? token;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthResponseEntity(id: $id, phone: $phone, referralCode: $referralCode, status: $status, token: $token)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthResponseEntity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('referralCode', referralCode))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('token', token));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthResponseEntity &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality()
                .equals(other.referralCode, referralCode) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(referralCode),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$AuthResponseEntityCopyWith<_AuthResponseEntity> get copyWith =>
      __$AuthResponseEntityCopyWithImpl<_AuthResponseEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthResponseEntityToJson(this);
  }
}

abstract class _AuthResponseEntity implements AuthResponseEntity {
  factory _AuthResponseEntity(
      {required String id,
      required String phone,
      String? referralCode,
      @JsonKey(fromJson: _numberToUserStatus) UserStatus? status,
      String? token}) = _$_AuthResponseEntity;

  factory _AuthResponseEntity.fromJson(Map<String, dynamic> json) =
      _$_AuthResponseEntity.fromJson;

  @override
  String get id;
  @override
  String get phone;
  @override
  String? get referralCode;
  @override
  @JsonKey(fromJson: _numberToUserStatus)
  UserStatus? get status;
  @override
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$AuthResponseEntityCopyWith<_AuthResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
