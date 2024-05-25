import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository.freezed.dart';
part 'repository.g.dart';

@freezed
class Repository with _$Repository {
  const Repository._();

  const factory Repository({
    /// ID。
    required int id,

    /// リポジトリURL。
    required String htmlUrl,
  }) = _Repository;

  /// リポジトリ名。
  ///
  /// [htmlUrl]からリポジトリ名を取得する。
  String get name => htmlUrl.split('/').last;

  /// JSONから[Repository]に変換する。
  factory Repository.fromJson(Map<String, dynamic> json) =>
      _$RepositoryFromJson(json);
}
