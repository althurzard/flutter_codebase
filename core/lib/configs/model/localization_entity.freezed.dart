// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'localization_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocalizationEntity _$LocalizationEntityFromJson(Map<String, dynamic> json) {
  return _LocalizationEntity.fromJson(json);
}

/// @nodoc
class _$LocalizationEntityTearOff {
  const _$LocalizationEntityTearOff();

  _LocalizationEntity call({required String en, required String vi}) {
    return _LocalizationEntity(
      en: en,
      vi: vi,
    );
  }

  LocalizationEntity fromJson(Map<String, Object?> json) {
    return LocalizationEntity.fromJson(json);
  }
}

/// @nodoc
const $LocalizationEntity = _$LocalizationEntityTearOff();

/// @nodoc
mixin _$LocalizationEntity {
  String get en => throw _privateConstructorUsedError;
  String get vi => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalizationEntityCopyWith<LocalizationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalizationEntityCopyWith<$Res> {
  factory $LocalizationEntityCopyWith(
          LocalizationEntity value, $Res Function(LocalizationEntity) then) =
      _$LocalizationEntityCopyWithImpl<$Res>;
  $Res call({String en, String vi});
}

/// @nodoc
class _$LocalizationEntityCopyWithImpl<$Res>
    implements $LocalizationEntityCopyWith<$Res> {
  _$LocalizationEntityCopyWithImpl(this._value, this._then);

  final LocalizationEntity _value;
  // ignore: unused_field
  final $Res Function(LocalizationEntity) _then;

  @override
  $Res call({
    Object? en = freezed,
    Object? vi = freezed,
  }) {
    return _then(_value.copyWith(
      en: en == freezed
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
      vi: vi == freezed
          ? _value.vi
          : vi // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LocalizationEntityCopyWith<$Res>
    implements $LocalizationEntityCopyWith<$Res> {
  factory _$LocalizationEntityCopyWith(
          _LocalizationEntity value, $Res Function(_LocalizationEntity) then) =
      __$LocalizationEntityCopyWithImpl<$Res>;
  @override
  $Res call({String en, String vi});
}

/// @nodoc
class __$LocalizationEntityCopyWithImpl<$Res>
    extends _$LocalizationEntityCopyWithImpl<$Res>
    implements _$LocalizationEntityCopyWith<$Res> {
  __$LocalizationEntityCopyWithImpl(
      _LocalizationEntity _value, $Res Function(_LocalizationEntity) _then)
      : super(_value, (v) => _then(v as _LocalizationEntity));

  @override
  _LocalizationEntity get _value => super._value as _LocalizationEntity;

  @override
  $Res call({
    Object? en = freezed,
    Object? vi = freezed,
  }) {
    return _then(_LocalizationEntity(
      en: en == freezed
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
      vi: vi == freezed
          ? _value.vi
          : vi // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocalizationEntity
    with DiagnosticableTreeMixin
    implements _LocalizationEntity {
  _$_LocalizationEntity({required this.en, required this.vi});

  factory _$_LocalizationEntity.fromJson(Map<String, dynamic> json) =>
      _$$_LocalizationEntityFromJson(json);

  @override
  final String en;
  @override
  final String vi;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocalizationEntity(en: $en, vi: $vi)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocalizationEntity'))
      ..add(DiagnosticsProperty('en', en))
      ..add(DiagnosticsProperty('vi', vi));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocalizationEntity &&
            const DeepCollectionEquality().equals(other.en, en) &&
            const DeepCollectionEquality().equals(other.vi, vi));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(en),
      const DeepCollectionEquality().hash(vi));

  @JsonKey(ignore: true)
  @override
  _$LocalizationEntityCopyWith<_LocalizationEntity> get copyWith =>
      __$LocalizationEntityCopyWithImpl<_LocalizationEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocalizationEntityToJson(this);
  }
}

abstract class _LocalizationEntity implements LocalizationEntity {
  factory _LocalizationEntity({required String en, required String vi}) =
      _$_LocalizationEntity;

  factory _LocalizationEntity.fromJson(Map<String, dynamic> json) =
      _$_LocalizationEntity.fromJson;

  @override
  String get en;
  @override
  String get vi;
  @override
  @JsonKey(ignore: true)
  _$LocalizationEntityCopyWith<_LocalizationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
