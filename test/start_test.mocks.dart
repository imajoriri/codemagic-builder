// Mocks generated by Mockito 5.4.4 from annotations
// in codemagic_builder/test/start_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i8;

import 'package:codemagic_builder/controller/git/git.dart' as _i4;
import 'package:codemagic_builder/controller/logger/logger.dart' as _i6;
import 'package:codemagic_builder/entity/application/application.dart' as _i9;
import 'package:codemagic_builder/entity/build/build.dart' as _i3;
import 'package:codemagic_builder/repository/application_repository.dart'
    as _i7;
import 'package:codemagic_builder/repository/build_repository.dart' as _i10;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i5;
import 'package:riverpod/riverpod.dart' as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeRef_0<State extends Object?> extends _i1.SmartFake
    implements _i2.Ref<State> {
  _FakeRef_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeBuild_1 extends _i1.SmartFake implements _i3.Build {
  _FakeBuild_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [Git].
///
/// See the documentation for Mockito's code generation for more information.
class MockGit extends _i1.Mock implements _i4.Git {
  @override
  List<String> getBranches() => (super.noSuchMethod(
        Invocation.method(
          #getBranches,
          [],
        ),
        returnValue: <String>[],
        returnValueForMissingStub: <String>[],
      ) as List<String>);

  @override
  String getCurrentBranch() => (super.noSuchMethod(
        Invocation.method(
          #getCurrentBranch,
          [],
        ),
        returnValue: _i5.dummyValue<String>(
          this,
          Invocation.method(
            #getCurrentBranch,
            [],
          ),
        ),
        returnValueForMissingStub: _i5.dummyValue<String>(
          this,
          Invocation.method(
            #getCurrentBranch,
            [],
          ),
        ),
      ) as String);

  @override
  String getCurrentRepositoryName() => (super.noSuchMethod(
        Invocation.method(
          #getCurrentRepositoryName,
          [],
        ),
        returnValue: _i5.dummyValue<String>(
          this,
          Invocation.method(
            #getCurrentRepositoryName,
            [],
          ),
        ),
        returnValueForMissingStub: _i5.dummyValue<String>(
          this,
          Invocation.method(
            #getCurrentRepositoryName,
            [],
          ),
        ),
      ) as String);
}

/// A class which mocks [Logger].
///
/// See the documentation for Mockito's code generation for more information.
class MockLogger extends _i1.Mock implements _i6.Logger {
  @override
  void err(String? message) => super.noSuchMethod(
        Invocation.method(
          #err,
          [message],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void info(String? message) => super.noSuchMethod(
        Invocation.method(
          #info,
          [message],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void success(String? message) => super.noSuchMethod(
        Invocation.method(
          #success,
          [message],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void warn(String? message) => super.noSuchMethod(
        Invocation.method(
          #warn,
          [message],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [ApplicationRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockApplicationRepository extends _i1.Mock
    implements _i7.ApplicationRepository {
  @override
  _i2.Ref<Object?> get ref => (super.noSuchMethod(
        Invocation.getter(#ref),
        returnValue: _FakeRef_0<Object?>(
          this,
          Invocation.getter(#ref),
        ),
        returnValueForMissingStub: _FakeRef_0<Object?>(
          this,
          Invocation.getter(#ref),
        ),
      ) as _i2.Ref<Object?>);

  @override
  _i8.Future<List<_i9.Application>> getRepositories({required String? token}) =>
      (super.noSuchMethod(
        Invocation.method(
          #getRepositories,
          [],
          {#token: token},
        ),
        returnValue:
            _i8.Future<List<_i9.Application>>.value(<_i9.Application>[]),
        returnValueForMissingStub:
            _i8.Future<List<_i9.Application>>.value(<_i9.Application>[]),
      ) as _i8.Future<List<_i9.Application>>);
}

/// A class which mocks [BuildRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockBuildRepository extends _i1.Mock implements _i10.BuildRepository {
  @override
  _i2.Ref<Object?> get ref => (super.noSuchMethod(
        Invocation.getter(#ref),
        returnValue: _FakeRef_0<Object?>(
          this,
          Invocation.getter(#ref),
        ),
        returnValueForMissingStub: _FakeRef_0<Object?>(
          this,
          Invocation.getter(#ref),
        ),
      ) as _i2.Ref<Object?>);

  @override
  _i8.Future<_i3.Build> startBuild({
    required String? token,
    required String? appId,
    required String? workflowId,
    required String? branch,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #startBuild,
          [],
          {
            #token: token,
            #appId: appId,
            #workflowId: workflowId,
            #branch: branch,
          },
        ),
        returnValue: _i8.Future<_i3.Build>.value(_FakeBuild_1(
          this,
          Invocation.method(
            #startBuild,
            [],
            {
              #token: token,
              #appId: appId,
              #workflowId: workflowId,
              #branch: branch,
            },
          ),
        )),
        returnValueForMissingStub: _i8.Future<_i3.Build>.value(_FakeBuild_1(
          this,
          Invocation.method(
            #startBuild,
            [],
            {
              #token: token,
              #appId: appId,
              #workflowId: workflowId,
              #branch: branch,
            },
          ),
        )),
      ) as _i8.Future<_i3.Build>);
}