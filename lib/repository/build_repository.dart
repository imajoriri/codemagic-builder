import 'package:codemagic_builder/entity/build/build.dart';
import 'package:codemagic_builder/repository/dio.dart';
import 'package:dio/dio.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'build_repository.g.dart';

@riverpod
BuildRepository buildRepository(BuildRepositoryRef ref) =>
    BuildRepository(ref: ref);

/// Codemagicのビルドを操作するリポジトリ。
class BuildRepository {
  const BuildRepository({required this.ref});
  final Ref ref;

  /// ビルドを開始する。
  Future<Build> startBuild({
    required String token,
    required String appId,
    required String workflowId,
    required String branch,
  }) async {
    final response = await dio.post(
      "https://api.codemagic.io/builds",
      data: {
        'appId': appId,
        'workflowId': workflowId,
        'branch': branch,
      },
      options: Options(
        headers: {
          'x-auth-token': token,
        },
      ),
    );
    return Build.fromJson(response.data);
  }

  /// ビルドのステータスを取得する。
  Future<String> getBuildStatus({
    required String token,
    required String buildId,
  }) async {
    final response = await dio.get(
      "https://api.codemagic.io/builds/$buildId",
      options: Options(
        headers: {
          'x-auth-token': token,
        },
      ),
    );
    return response.data['build']['status'];
  }
}
