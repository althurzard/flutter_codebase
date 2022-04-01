// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'introduction_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IntroductionEntity _$IntroductionEntityFromJson(Map<String, dynamic> json) {
  return _IntroductionEntity.fromJson(json);
}

/// @nodoc
class _$IntroductionEntityTearOff {
  const _$IntroductionEntityTearOff();

  _IntroductionEntity call(
      {required LocalizationEntity title,
      required LocalizationEntity description,
      required String imageURL}) {
    return _IntroductionEntity(
      title: title,
      description: description,
      imageURL: imageURL,
    );
  }

  IntroductionEntity fromJson(Map<String, Object?> json) {
    return IntroductionEntity.fromJson(json);
  }
}

/// @nodoc
const $IntroductionEntity = _$IntroductionEntityTearOff();

/// @nodoc
mixin _$IntroductionEntity {
  LocalizationEntity get title => throw _privateConstructorUsedError;
  LocalizationEntity get description => throw _privateConstructorUsedError;
  String get imageURL => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IntroductionEntityCopyWith<IntroductionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntroductionEntityCopyWith<$Res> {
  factory $IntroductionEntityCopyWith(
          IntroductionEntity value, $Res Function(IntroductionEntity) then) =
      _$IntroductionEntityCopyWithImpl<$Res>;
  $Res call(
      {LocalizationEntity title,
      LocalizationEntity description,
      String imageURL});

  $LocalizationEntityCopyWith<$Res> get title;
  $LocalizationEntityCopyWith<$Res> get description;
}

/// @nodoc
class _$IntroductionEntityCopyWithImpl<$Res>
    implements $IntroductionEntityCopyWith<$Res> {
  _$IntroductionEntityCopyWithImpl(this._value, this._then);

  final IntroductionEntity _value;
  // ignore: unused_field
  final $Res Function(IntroductionEntity) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? imageURL = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as LocalizationEntity,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as LocalizationEntity,
      imageURL: imageURL == freezed
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $LocalizationEntityCopyWith<$Res> get title {
    return $LocalizationEntityCopyWith<$Res>(_value.title, (value) {
      return _then(_value.copyWith(title: value));
    });
  }

  @override
  $LocalizationEntityCopyWith<$Res> get description {
    return $LocalizationEntityCopyWith<$Res>(_value.description, (value) {
      return _then(_value.copyWith(description: value));
    });
  }
}

/// @nodoc
abstract class _$IntroductionEntityCopyWith<$Res>
    implements $IntroductionEntityCopyWith<$Res> {
  factory _$IntroductionEntityCopyWith(
          _IntroductionEntity value, $Res Function(_IntroductionEntity) then) =
      __$IntroductionEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {LocalizationEntity title,
      LocalizationEntity description,
      String imageURL});

  @override
  $LocalizationEntityCopyWith<$Res> get title;
  @override
  $LocalizationEntityCopyWith<$Res> get description;
}

/// @nodoc
class __$IntroductionEntityCopyWithImpl<$Res>
    extends _$IntroductionEntityCopyWithImpl<$Res>
    implements _$IntroductionEntityCopyWith<$Res> {
  __$IntroductionEntityCopyWithImpl(
      _IntroductionEntity _value, $Res Function(_IntroductionEntity) _then)
      : super(_value, (v) => _then(v as _IntroductionEntity));

  @override
  _IntroductionEntity get _value => super._value as _IntroductionEntity;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? imageURL = freezed,
  }) {
    return _then(_IntroductionEntity(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as LocalizationEntity,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as LocalizationEntity,
      imageURL: imageURL == freezed
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IntroductionEntity
    with DiagnosticableTreeMixin
    implements _IntroductionEntity {
  _$_IntroductionEntity(
      {required this.title, required this.description, required this.imageURL});

  factory _$_IntroductionEntity.fromJson(Map<String, dynamic> json) =>
      _$$_IntroductionEntityFromJson(json);

  @override
  final LocalizationEntity title;
  @override
  final LocalizationEntity description;
  @override
  final String imageURL;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IntroductionEntity(title: $title, description: $description, imageURL: $imageURL)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IntroductionEntity'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('imageURL', imageURL));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IntroductionEntity &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.imageURL, imageURL));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(imageURL));

  @JsonKey(ignore: true)
  @override
  _$IntroductionEntityCopyWith<_IntroductionEntity> get copyWith =>
      __$IntroductionEntityCopyWithImpl<_IntroductionEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IntroductionEntityToJson(this);
  }
}

abstract class _IntroductionEntity implements IntroductionEntity {
  factory _IntroductionEntity(
      {required LocalizationEntity title,
      required LocalizationEntity description,
      required String imageURL}) = _$_IntroductionEntity;

  factory _IntroductionEntity.fromJson(Map<String, dynamic> json) =
      _$_IntroductionEntity.fromJson;

  @override
  LocalizationEntity get title;
  @override
  LocalizationEntity get description;
  @override
  String get imageURL;
  @override
  @JsonKey(ignore: true)
  _$IntroductionEntityCopyWith<_IntroductionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
