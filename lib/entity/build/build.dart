// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'build.freezed.dart';
part 'build.g.dart';

@freezed
class Build with _$Build {
  const Build._();

  const factory Build({
    /// ID。
    @JsonKey(name: 'buildId') required String id,
  }) = _Build;

  /// JSONから[Repository]に変換する。
  factory Build.fromJson(Map<String, dynamic> json) => _$BuildFromJson(json);
}
