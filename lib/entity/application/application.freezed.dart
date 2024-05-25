// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'application.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Application _$ApplicationFromJson(Map<String, dynamic> json) {
  return _Application.fromJson(json);
}

/// @nodoc
mixin _$Application {
  /// ID。
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;

  /// アプリケーション名。
  String get appName => throw _privateConstructorUsedError;

  /// リポジトリ。
  Repository get repository => throw _privateConstructorUsedError;

  /// ワークフローのリスト。
  Map<String, Workflow> get workflows => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApplicationCopyWith<Application> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationCopyWith<$Res> {
  factory $ApplicationCopyWith(
          Application value, $Res Function(Application) then) =
      _$ApplicationCopyWithImpl<$Res, Application>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String appName,
      Repository repository,
      Map<String, Workflow> workflows});

  $RepositoryCopyWith<$Res> get repository;
}

/// @nodoc
class _$ApplicationCopyWithImpl<$Res, $Val extends Application>
    implements $ApplicationCopyWith<$Res> {
  _$ApplicationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? appName = null,
    Object? repository = null,
    Object? workflows = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      repository: null == repository
          ? _value.repository
          : repository // ignore: cast_nullable_to_non_nullable
              as Repository,
      workflows: null == workflows
          ? _value.workflows
          : workflows // ignore: cast_nullable_to_non_nullable
              as Map<String, Workflow>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RepositoryCopyWith<$Res> get repository {
    return $RepositoryCopyWith<$Res>(_value.repository, (value) {
      return _then(_value.copyWith(repository: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApplicationImplCopyWith<$Res>
    implements $ApplicationCopyWith<$Res> {
  factory _$$ApplicationImplCopyWith(
          _$ApplicationImpl value, $Res Function(_$ApplicationImpl) then) =
      __$$ApplicationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String appName,
      Repository repository,
      Map<String, Workflow> workflows});

  @override
  $RepositoryCopyWith<$Res> get repository;
}

/// @nodoc
class __$$ApplicationImplCopyWithImpl<$Res>
    extends _$ApplicationCopyWithImpl<$Res, _$ApplicationImpl>
    implements _$$ApplicationImplCopyWith<$Res> {
  __$$ApplicationImplCopyWithImpl(
      _$ApplicationImpl _value, $Res Function(_$ApplicationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? appName = null,
    Object? repository = null,
    Object? workflows = null,
  }) {
    return _then(_$ApplicationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      repository: null == repository
          ? _value.repository
          : repository // ignore: cast_nullable_to_non_nullable
              as Repository,
      workflows: null == workflows
          ? _value._workflows
          : workflows // ignore: cast_nullable_to_non_nullable
              as Map<String, Workflow>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApplicationImpl implements _Application {
  const _$ApplicationImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.appName,
      required this.repository,
      required final Map<String, Workflow> workflows})
      : _workflows = workflows;

  factory _$ApplicationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApplicationImplFromJson(json);

  /// ID。
  @override
  @JsonKey(name: '_id')
  final String id;

  /// アプリケーション名。
  @override
  final String appName;

  /// リポジトリ。
  @override
  final Repository repository;

  /// ワークフローのリスト。
  final Map<String, Workflow> _workflows;

  /// ワークフローのリスト。
  @override
  Map<String, Workflow> get workflows {
    if (_workflows is EqualUnmodifiableMapView) return _workflows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_workflows);
  }

  @override
  String toString() {
    return 'Application(id: $id, appName: $appName, repository: $repository, workflows: $workflows)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplicationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.appName, appName) || other.appName == appName) &&
            (identical(other.repository, repository) ||
                other.repository == repository) &&
            const DeepCollectionEquality()
                .equals(other._workflows, _workflows));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, appName, repository,
      const DeepCollectionEquality().hash(_workflows));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplicationImplCopyWith<_$ApplicationImpl> get copyWith =>
      __$$ApplicationImplCopyWithImpl<_$ApplicationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApplicationImplToJson(
      this,
    );
  }
}

abstract class _Application implements Application {
  const factory _Application(
      {@JsonKey(name: '_id') required final String id,
      required final String appName,
      required final Repository repository,
      required final Map<String, Workflow> workflows}) = _$ApplicationImpl;

  factory _Application.fromJson(Map<String, dynamic> json) =
      _$ApplicationImpl.fromJson;

  @override

  /// ID。
  @JsonKey(name: '_id')
  String get id;
  @override

  /// アプリケーション名。
  String get appName;
  @override

  /// リポジトリ。
  Repository get repository;
  @override

  /// ワークフローのリスト。
  Map<String, Workflow> get workflows;
  @override
  @JsonKey(ignore: true)
  _$$ApplicationImplCopyWith<_$ApplicationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
