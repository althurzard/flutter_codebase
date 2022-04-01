// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_info_request_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserInfoRequestEntity _$UserInfoRequestEntityFromJson(
    Map<String, dynamic> json) {
  return _UserInfoRequestEntity.fromJson(json);
}

/// @nodoc
class _$UserInfoRequestEntityTearOff {
  const _$UserInfoRequestEntityTearOff();

  _UserInfoRequestEntity call(
      {required String fullname,
      required String birthday,
      required int gender,
      required String identityNo,
      required int positionId,
      String? email}) {
    return _UserInfoRequestEntity(
      fullname: fullname,
      birthday: birthday,
      gender: gender,
      identityNo: identityNo,
      positionId: positionId,
      email: email,
    );
  }

  UserInfoRequestEntity fromJson(Map<String, Object?> json) {
    return UserInfoRequestEntity.fromJson(json);
  }
}

/// @nodoc
const $UserInfoRequestEntity = _$UserInfoRequestEntityTearOff();

/// @nodoc
mixin _$UserInfoRequestEntity {
  String get fullname => throw _privateConstructorUsedError;
  String get birthday => throw _privateConstructorUsedError;
  int get gender => throw _privateConstructorUsedError;
  String get identityNo => throw _privateConstructorUsedError;
  int get positionId => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserInfoRequestEntityCopyWith<UserInfoRequestEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoRequestEntityCopyWith<$Res> {
  factory $UserInfoRequestEntityCopyWith(UserInfoRequestEntity value,
          $Res Function(UserInfoRequestEntity) then) =
      _$UserInfoRequestEntityCopyWithImpl<$Res>;
  $Res call(
      {String fullname,
      String birthday,
      int gender,
      String identityNo,
      int positionId,
      String? email});
}

/// @nodoc
class _$UserInfoRequestEntityCopyWithImpl<$Res>
    implements $UserInfoRequestEntityCopyWith<$Res> {
  _$UserInfoRequestEntityCopyWithImpl(this._value, this._then);

  final UserInfoRequestEntity _value;
  // ignore: unused_field
  final $Res Function(UserInfoRequestEntity) _then;

  @override
  $Res call({
    Object? fullname = freezed,
    Object? birthday = freezed,
    Object? gender = freezed,
    Object? identityNo = freezed,
    Object? positionId = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      fullname: fullname == freezed
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      identityNo: identityNo == freezed
          ? _value.identityNo
          : identityNo // ignore: cast_nullable_to_non_nullable
              as String,
      positionId: positionId == freezed
          ? _value.positionId
          : positionId // ignore: cast_nullable_to_non_nullable
              as int,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserInfoRequestEntityCopyWith<$Res>
    implements $UserInfoRequestEntityCopyWith<$Res> {
  factory _$UserInfoRequestEntityCopyWith(_UserInfoRequestEntity value,
          $Res Function(_UserInfoRequestEntity) then) =
      __$UserInfoRequestEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String fullname,
      String birthday,
      int gender,
      String identityNo,
      int positionId,
      String? email});
}

/// @nodoc
class __$UserInfoRequestEntityCopyWithImpl<$Res>
    extends _$UserInfoRequestEntityCopyWithImpl<$Res>
    implements _$UserInfoRequestEntityCopyWith<$Res> {
  __$UserInfoRequestEntityCopyWithImpl(_UserInfoRequestEntity _value,
      $Res Function(_UserInfoRequestEntity) _then)
      : super(_value, (v) => _then(v as _UserInfoRequestEntity));

  @override
  _UserInfoRequestEntity get _value => super._value as _UserInfoRequestEntity;

  @override
  $Res call({
    Object? fullname = freezed,
    Object? birthday = freezed,
    Object? gender = freezed,
    Object? identityNo = freezed,
    Object? positionId = freezed,
    Object? email = freezed,
  }) {
    return _then(_UserInfoRequestEntity(
      fullname: fullname == freezed
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      identityNo: identityNo == freezed
          ? _value.identityNo
          : identityNo // ignore: cast_nullable_to_non_nullable
              as String,
      positionId: positionId == freezed
          ? _value.positionId
          : positionId // ignore: cast_nullable_to_non_nullable
              as int,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserInfoRequestEntity
    with DiagnosticableTreeMixin
    implements _UserInfoRequestEntity {
  _$_UserInfoRequestEntity(
      {required this.fullname,
      required this.birthday,
      required this.gender,
      required this.identityNo,
      required this.positionId,
      this.email});

  factory _$_UserInfoRequestEntity.fromJson(Map<String, dynamic> json) =>
      _$$_UserInfoRequestEntityFromJson(json);

  @override
  final String fullname;
  @override
  final String birthday;
  @override
  final int gender;
  @override
  final String identityNo;
  @override
  final int positionId;
  @override
  final String? email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserInfoRequestEntity(fullname: $fullname, birthday: $birthday, gender: $gender, identityNo: $identityNo, positionId: $positionId, email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserInfoRequestEntity'))
      ..add(DiagnosticsProperty('fullname', fullname))
      ..add(DiagnosticsProperty('birthday', birthday))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('identityNo', identityNo))
      ..add(DiagnosticsProperty('positionId', positionId))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserInfoRequestEntity &&
            const DeepCollectionEquality().equals(other.fullname, fullname) &&
            const DeepCollectionEquality().equals(other.birthday, birthday) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality()
                .equals(other.identityNo, identityNo) &&
            const DeepCollectionEquality()
                .equals(other.positionId, positionId) &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fullname),
      const DeepCollectionEquality().hash(birthday),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(identityNo),
      const DeepCollectionEquality().hash(positionId),
      const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$UserInfoRequestEntityCopyWith<_UserInfoRequestEntity> get copyWith =>
      __$UserInfoRequestEntityCopyWithImpl<_UserInfoRequestEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserInfoRequestEntityToJson(this);
  }
}

abstract class _UserInfoRequestEntity implements UserInfoRequestEntity {
  factory _UserInfoRequestEntity(
      {required String fullname,
      required String birthday,
      required int gender,
      required String identityNo,
      required int positionId,
      String? email}) = _$_UserInfoRequestEntity;

  factory _UserInfoRequestEntity.fromJson(Map<String, dynamic> json) =
      _$_UserInfoRequestEntity.fromJson;

  @override
  String get fullname;
  @override
  String get birthday;
  @override
  int get gender;
  @override
  String get identityNo;
  @override
  int get positionId;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$UserInfoRequestEntityCopyWith<_UserInfoRequestEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
