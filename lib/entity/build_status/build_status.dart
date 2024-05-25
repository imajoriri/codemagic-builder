import 'package:collection/collection.dart';

enum BuildStatus {
  /// ビルド待ち。
  queued,

  /// preparing
  preparing,

  /// fetching
  fetching,

  /// ビルド中。
  building,

  /// publishing
  publishing,

  /// testing
  testing,

  /// timeout
  timeout,

  /// warning
  warning,

  /// skipped
  skipped,

  /// ビルドがキャンセルされた。
  canceled,

  /// ビルドが完了した。
  finishing,

  /// ビルドが完了した。
  finished,

  /// ビルドが失敗した。
  failed;

  /// 文字列から[BuildStatus]に変換する。
  static BuildStatus fromString(String str) {
    final values = BuildStatus.values;
    final status = values.firstWhereOrNull(
      (element) => element.toString().split('.').last == str,
    );
    if (status == null) {
      throw ArgumentError("Unknown status: $str");
    }
    return status;
  }
}
