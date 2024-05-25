// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workflow.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Workflow _$WorkflowFromJson(Map<String, dynamic> json) {
  return _Workflow.fromJson(json);
}

/// @nodoc
mixin _$Workflow {
  /// ID。
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;

  /// ワークフロー名。
  String get name => throw _privateConstructorUsedError;

  /// 最大ビルド時間。
  int get maxBuildDuration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkflowCopyWith<Workflow> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkflowCopyWith<$Res> {
  factory $WorkflowCopyWith(Workflow value, $Res Function(Workflow) then) =
      _$WorkflowCopyWithImpl<$Res, Workflow>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id, String name, int maxBuildDuration});
}

/// @nodoc
class _$WorkflowCopyWithImpl<$Res, $Val extends Workflow>
    implements $WorkflowCopyWith<$Res> {
  _$WorkflowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? maxBuildDuration = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      maxBuildDuration: null == maxBuildDuration
          ? _value.maxBuildDuration
          : maxBuildDuration // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkflowImplCopyWith<$Res>
    implements $WorkflowCopyWith<$Res> {
  factory _$$WorkflowImplCopyWith(
          _$WorkflowImpl value, $Res Function(_$WorkflowImpl) then) =
      __$$WorkflowImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id, String name, int maxBuildDuration});
}

/// @nodoc
class __$$WorkflowImplCopyWithImpl<$Res>
    extends _$WorkflowCopyWithImpl<$Res, _$WorkflowImpl>
    implements _$$WorkflowImplCopyWith<$Res> {
  __$$WorkflowImplCopyWithImpl(
      _$WorkflowImpl _value, $Res Function(_$WorkflowImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? maxBuildDuration = null,
  }) {
    return _then(_$WorkflowImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      maxBuildDuration: null == maxBuildDuration
          ? _value.maxBuildDuration
          : maxBuildDuration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkflowImpl implements _Workflow {
  const _$WorkflowImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.name,
      required this.maxBuildDuration});

  factory _$WorkflowImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkflowImplFromJson(json);

  /// ID。
  @override
  @JsonKey(name: '_id')
  final String id;

  /// ワークフロー名。
  @override
  final String name;

  /// 最大ビルド時間。
  @override
  final int maxBuildDuration;

  @override
  String toString() {
    return 'Workflow(id: $id, name: $name, maxBuildDuration: $maxBuildDuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkflowImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.maxBuildDuration, maxBuildDuration) ||
                other.maxBuildDuration == maxBuildDuration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, maxBuildDuration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkflowImplCopyWith<_$WorkflowImpl> get copyWith =>
      __$$WorkflowImplCopyWithImpl<_$WorkflowImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkflowImplToJson(
      this,
    );
  }
}

abstract class _Workflow implements Workflow {
  const factory _Workflow(
      {@JsonKey(name: '_id') required final String id,
      required final String name,
      required final int maxBuildDuration}) = _$WorkflowImpl;

  factory _Workflow.fromJson(Map<String, dynamic> json) =
      _$WorkflowImpl.fromJson;

  @override

  /// ID。
  @JsonKey(name: '_id')
  String get id;
  @override

  /// ワークフロー名。
  String get name;
  @override

  /// 最大ビルド時間。
  int get maxBuildDuration;
  @override
  @JsonKey(ignore: true)
  _$$WorkflowImplCopyWith<_$WorkflowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
