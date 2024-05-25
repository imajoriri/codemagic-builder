import 'package:codemagic_builder/entity/application/application.dart';
import 'package:codemagic_builder/repository/dio.dart';
import 'package:dio/dio.dart';

/// Codemagicのアプリケーション用のリポジトリ。
class ApplicationRepository {
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
