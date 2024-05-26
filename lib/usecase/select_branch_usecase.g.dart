// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_branch_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$selectBranchUseCaseHash() =>
    r'227087f04bc81556d68e9b6bd5c533f33d8b8b8e';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [selectBranchUseCase].
@ProviderFor(selectBranchUseCase)
const selectBranchUseCaseProvider = SelectBranchUseCaseFamily();

/// See also [selectBranchUseCase].
class SelectBranchUseCaseFamily extends Family {
  /// See also [selectBranchUseCase].
  const SelectBranchUseCaseFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'selectBranchUseCaseProvider';

  /// See also [selectBranchUseCase].
  SelectBranchUseCaseProvider call(
    Application application,
    String defaultBranch,
  ) {
    return SelectBranchUseCaseProvider(
      application,
      defaultBranch,
    );
  }

  @visibleForOverriding
  @override
  SelectBranchUseCaseProvider getProviderOverride(
    covariant SelectBranchUseCaseProvider provider,
  ) {
    return call(
      provider.application,
      provider.defaultBranch,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(
      SelectBranchUseCase Function(SelectBranchUseCaseRef ref) create) {
    return _$SelectBranchUseCaseFamilyOverride(this, create);
  }
}

class _$SelectBranchUseCaseFamilyOverride implements FamilyOverride {
  _$SelectBranchUseCaseFamilyOverride(this.overriddenFamily, this.create);

  final SelectBranchUseCase Function(SelectBranchUseCaseRef ref) create;

  @override
  final SelectBranchUseCaseFamily overriddenFamily;

  @override
  SelectBranchUseCaseProvider getProviderOverride(
    covariant SelectBranchUseCaseProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [selectBranchUseCase].
class SelectBranchUseCaseProvider
    extends AutoDisposeProvider<SelectBranchUseCase> {
  /// See also [selectBranchUseCase].
  SelectBranchUseCaseProvider(
    Application application,
    String defaultBranch,
  ) : this._internal(
          (ref) => selectBranchUseCase(
            ref as SelectBranchUseCaseRef,
            application,
            defaultBranch,
          ),
          from: selectBranchUseCaseProvider,
          name: r'selectBranchUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$selectBranchUseCaseHash,
          dependencies: SelectBranchUseCaseFamily._dependencies,
          allTransitiveDependencies:
              SelectBranchUseCaseFamily._allTransitiveDependencies,
          application: application,
          defaultBranch: defaultBranch,
        );

  SelectBranchUseCaseProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.application,
    required this.defaultBranch,
  }) : super.internal();

  final Application application;
  final String defaultBranch;

  @override
  Override overrideWith(
    SelectBranchUseCase Function(SelectBranchUseCaseRef ref) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SelectBranchUseCaseProvider._internal(
        (ref) => create(ref as SelectBranchUseCaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        application: application,
        defaultBranch: defaultBranch,
      ),
    );
  }

  @override
  (
    Application,
    String,
  ) get argument {
    return (
      application,
      defaultBranch,
    );
  }

  @override
  AutoDisposeProviderElement<SelectBranchUseCase> createElement() {
    return _SelectBranchUseCaseProviderElement(this);
  }

  SelectBranchUseCaseProvider _copyWith(
    SelectBranchUseCase Function(SelectBranchUseCaseRef ref) create,
  ) {
    return SelectBranchUseCaseProvider._internal(
      (ref) => create(ref as SelectBranchUseCaseRef),
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      application: application,
      defaultBranch: defaultBranch,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is SelectBranchUseCaseProvider &&
        other.application == application &&
        other.defaultBranch == defaultBranch;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, application.hashCode);
    hash = _SystemHash.combine(hash, defaultBranch.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SelectBranchUseCaseRef on AutoDisposeProviderRef<SelectBranchUseCase> {
  /// The parameter `application` of this provider.
  Application get application;

  /// The parameter `defaultBranch` of this provider.
  String get defaultBranch;
}

class _SelectBranchUseCaseProviderElement
    extends AutoDisposeProviderElement<SelectBranchUseCase>
    with SelectBranchUseCaseRef {
  _SelectBranchUseCaseProviderElement(super.provider);

  @override
  Application get application =>
      (origin as SelectBranchUseCaseProvider).application;
  @override
  String get defaultBranch =>
      (origin as SelectBranchUseCaseProvider).defaultBranch;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
