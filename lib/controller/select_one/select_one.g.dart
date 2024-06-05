// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_one.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$selectOneHash() => r'd76f17578df5dd227c2ecff9041cabe153ae0de0';

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

/// 配列の中からユーザーに1つを選択させるメソッド。
///
/// ユーザーは十字キーで選択し、Enterキーで確定する。
///
/// Copied from [selectOne].
@ProviderFor(selectOne)
const selectOneProvider = SelectOneFamily();

/// 配列の中からユーザーに1つを選択させるメソッド。
///
/// ユーザーは十字キーで選択し、Enterキーで確定する。
///
/// Copied from [selectOne].
class SelectOneFamily extends Family {
  /// 配列の中からユーザーに1つを選択させるメソッド。
  ///
  /// ユーザーは十字キーで選択し、Enterキーで確定する。
  ///
  /// Copied from [selectOne].
  const SelectOneFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'selectOneProvider';

  /// 配列の中からユーザーに1つを選択させるメソッド。
  ///
  /// ユーザーは十字キーで選択し、Enterキーで確定する。
  ///
  /// Copied from [selectOne].
  SelectOneProvider call({
    required String title,
    required List<String> options,
    int initialIndex = 0,
  }) {
    return SelectOneProvider(
      title: title,
      options: options,
      initialIndex: initialIndex,
    );
  }

  @visibleForOverriding
  @override
  SelectOneProvider getProviderOverride(
    covariant SelectOneProvider provider,
  ) {
    return call(
      title: provider.title,
      options: provider.options,
      initialIndex: provider.initialIndex,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(String Function(SelectOneRef ref) create) {
    return _$SelectOneFamilyOverride(this, create);
  }
}

class _$SelectOneFamilyOverride implements FamilyOverride {
  _$SelectOneFamilyOverride(this.overriddenFamily, this.create);

  final String Function(SelectOneRef ref) create;

  @override
  final SelectOneFamily overriddenFamily;

  @override
  SelectOneProvider getProviderOverride(
    covariant SelectOneProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// 配列の中からユーザーに1つを選択させるメソッド。
///
/// ユーザーは十字キーで選択し、Enterキーで確定する。
///
/// Copied from [selectOne].
class SelectOneProvider extends AutoDisposeProvider<String> {
  /// 配列の中からユーザーに1つを選択させるメソッド。
  ///
  /// ユーザーは十字キーで選択し、Enterキーで確定する。
  ///
  /// Copied from [selectOne].
  SelectOneProvider({
    required String title,
    required List<String> options,
    int initialIndex = 0,
  }) : this._internal(
          (ref) => selectOne(
            ref as SelectOneRef,
            title: title,
            options: options,
            initialIndex: initialIndex,
          ),
          from: selectOneProvider,
          name: r'selectOneProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$selectOneHash,
          dependencies: SelectOneFamily._dependencies,
          allTransitiveDependencies: SelectOneFamily._allTransitiveDependencies,
          title: title,
          options: options,
          initialIndex: initialIndex,
        );

  SelectOneProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.title,
    required this.options,
    required this.initialIndex,
  }) : super.internal();

  final String title;
  final List<String> options;
  final int initialIndex;

  @override
  Override overrideWith(
    String Function(SelectOneRef ref) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SelectOneProvider._internal(
        (ref) => create(ref as SelectOneRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        title: title,
        options: options,
        initialIndex: initialIndex,
      ),
    );
  }

  @override
  ({
    String title,
    List<String> options,
    int initialIndex,
  }) get argument {
    return (
      title: title,
      options: options,
      initialIndex: initialIndex,
    );
  }

  @override
  AutoDisposeProviderElement<String> createElement() {
    return _SelectOneProviderElement(this);
  }

  SelectOneProvider _copyWith(
    String Function(SelectOneRef ref) create,
  ) {
    return SelectOneProvider._internal(
      (ref) => create(ref as SelectOneRef),
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      title: title,
      options: options,
      initialIndex: initialIndex,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is SelectOneProvider &&
        other.title == title &&
        other.options == options &&
        other.initialIndex == initialIndex;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, title.hashCode);
    hash = _SystemHash.combine(hash, options.hashCode);
    hash = _SystemHash.combine(hash, initialIndex.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SelectOneRef on AutoDisposeProviderRef<String> {
  /// The parameter `title` of this provider.
  String get title;

  /// The parameter `options` of this provider.
  List<String> get options;

  /// The parameter `initialIndex` of this provider.
  int get initialIndex;
}

class _SelectOneProviderElement extends AutoDisposeProviderElement<String>
    with SelectOneRef {
  _SelectOneProviderElement(super.provider);

  @override
  String get title => (origin as SelectOneProvider).title;
  @override
  List<String> get options => (origin as SelectOneProvider).options;
  @override
  int get initialIndex => (origin as SelectOneProvider).initialIndex;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
