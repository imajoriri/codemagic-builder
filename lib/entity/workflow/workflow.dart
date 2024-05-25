// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'workflow.freezed.dart';
part 'workflow.g.dart';

/// Codemagicのワークフロー。
@freezed
class Workflow with _$Workflow {
  const factory Workflow({
    /// ID。
    @JsonKey(name: '_id') required String id,

    /// ワークフロー名。
    required String name,

    /// 最大ビルド時間。
    required int maxBuildDuration,
  }) = _Workflow;

  /// JSONから[Workflow]に変換する。
  factory Workflow.fromJson(Map<String, dynamic> json) =>
      _$WorkflowFromJson(json);
}
