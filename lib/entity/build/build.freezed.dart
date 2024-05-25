// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'build.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Build _$BuildFromJson(Map<String, dynamic> json) {
  return _Build.fromJson(json);
}

/// @nodoc
mixin _$Build {
  /// ID。
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;

  /// status
  BuildStatus get status => throw _privateConstructorUsedError;

  /// Index。
  int? get index => throw _privateConstructorUsedError;

  /// Version。
  String? get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BuildCopyWith<Build> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuildCopyWith<$Res> {
  factory $BuildCopyWith(Build value, $Res Function(Build) then) =
      _$BuildCopyWithImpl<$Res, Build>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      BuildStatus status,
      int? index,
      String? version});
}

/// @nodoc
class _$BuildCopyWithImpl<$Res, $Val extends Build>
    implements $BuildCopyWith<$Res> {
  _$BuildCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? index = freezed,
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BuildStatus,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BuildImplCopyWith<$Res> implements $BuildCopyWith<$Res> {
  factory _$$BuildImplCopyWith(
          _$BuildImpl value, $Res Function(_$BuildImpl) then) =
      __$$BuildImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      BuildStatus status,
      int? index,
      String? version});
}

/// @nodoc
class __$$BuildImplCopyWithImpl<$Res>
    extends _$BuildCopyWithImpl<$Res, _$BuildImpl>
    implements _$$BuildImplCopyWith<$Res> {
  __$$BuildImplCopyWithImpl(
      _$BuildImpl _value, $Res Function(_$BuildImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? index = freezed,
    Object? version = freezed,
  }) {
    return _then(_$BuildImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BuildStatus,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BuildImpl extends _Build {
  const _$BuildImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.status,
      this.index,
      this.version})
      : super._();

  factory _$BuildImpl.fromJson(Map<String, dynamic> json) =>
      _$$BuildImplFromJson(json);

  /// ID。
  @override
  @JsonKey(name: '_id')
  final String id;

  /// status
  @override
  final BuildStatus status;

  /// Index。
  @override
  final int? index;

  /// Version。
  @override
  final String? version;

  @override
  String toString() {
    return 'Build(id: $id, status: $status, index: $index, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuildImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, status, index, version);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BuildImplCopyWith<_$BuildImpl> get copyWith =>
      __$$BuildImplCopyWithImpl<_$BuildImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BuildImplToJson(
      this,
    );
  }
}

abstract class _Build extends Build {
  const factory _Build(
      {@JsonKey(name: '_id') required final String id,
      required final BuildStatus status,
      final int? index,
      final String? version}) = _$BuildImpl;
  const _Build._() : super._();

  factory _Build.fromJson(Map<String, dynamic> json) = _$BuildImpl.fromJson;

  @override

  /// ID。
  @JsonKey(name: '_id')
  String get id;
  @override

  /// status
  BuildStatus get status;
  @override

  /// Index。
  int? get index;
  @override

  /// Version。
  String? get version;
  @override
  @JsonKey(ignore: true)
  _$$BuildImplCopyWith<_$BuildImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
