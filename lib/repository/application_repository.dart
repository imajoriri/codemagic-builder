import 'package:codemagic_builder/entity/application/application.dart';
import 'package:codemagic_builder/repository/dio.dart';
import 'package:dio/dio.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'application_repository.g.dart';

@riverpod
ApplicationRepository applicationRepository(ApplicationRepositoryRef ref) =>
    ApplicationRepository(ref: ref);

/// Codemagicのアプリケーション用のリポジトリ。
class ApplicationRepository {
  const ApplicationRepository({required this.ref});
  final Ref ref;

  /// リポジトリの一覧を取得する。
  Future<List<Application>> getRepositories({required String token}) async {
    final response = await dio.get(
      "https://api.codemagic.io/apps",
      options: Options(
        headers: {
          'x-auth-token': token,
        },
      ),
    );
    final applications = response.data['applications'] as List<dynamic>;
    return applications.map((e) => Application.fromJson(e)).toList();
  }
}
