// ignore_for_file: invalid_annotation_target

import 'package:codemagic_builder/entity/repository/repository.dart';
import 'package:codemagic_builder/entity/workflow/workflow.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'application.freezed.dart';
part 'application.g.dart';

/// Codemagicのアプリケーション。
///
/// 参照: https://docs.codemagic.io/rest-api/applications/
@freezed
sealed class Application with _$Application {
  const factory Application({
    /// ID。
    @JsonKey(name: '_id') required String id,

    /// アプリケーション名。
    required String appName,

    /// リポジトリ。
    required Repository repository,

    /// ワークフローのリスト。
    required Map<String, Workflow> workflows,
  }) = _Application;

  /// JSONから[Application]に変換する。
  factory Application.fromJson(Map<String, dynamic> json) =>
      _$ApplicationFromJson(json);
}
