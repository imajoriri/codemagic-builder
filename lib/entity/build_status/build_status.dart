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
}
