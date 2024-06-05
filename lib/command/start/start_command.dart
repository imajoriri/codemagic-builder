import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:codemagic_builder/controller/exit/exit.dart';
import 'package:codemagic_builder/controller/select_one/select_one.dart';
import 'package:codemagic_builder/controller/token/token.dart';
import 'package:codemagic_builder/entity/application/application.dart';
import 'package:codemagic_builder/entity/build_status/build_status.dart';
import 'package:codemagic_builder/entity/workflow/workflow.dart';
import 'package:codemagic_builder/repository/application_repository.dart';
import 'package:codemagic_builder/repository/build_repository.dart';
import 'package:codemagic_builder/controller/git/git.dart';
import 'package:codemagic_builder/controller/logger/logger.dart';
import 'package:collection/collection.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'start_command.g.dart';

@riverpod
StartCommand startCommand(StartCommandRef ref) => StartCommand(ref: ref);

/// ビルドをスタートするためのコマンド。
class StartCommand extends Command {
  @override
  final name = "start";

  @override
  final description = "Start a new build";

  final Ref ref;
  Git get git => ref.read(gitProvider);
  Logger get logger => ref.read(loggerProvider);
  Exit get exit => ref.read(exitProvider);
  String? get token => ref.read(tokenProvider);

  StartCommand({required this.ref}) {
    argParser.addOption(
      'branch',
      abbr: 'b',
      defaultsTo: git.getCurrentBranch(),
      help: 'branch name',
    );
  }

  /// [Application]を取得する。
  ///
  /// 現在のリポジトリ名からApplicationを取得し、取得できない場合はユーザーに選択させる。
  Application _getApplication(List<Application> applications) {
    final currentRepositoryName = git.getCurrentRepositoryName();
    final currentApplication = applications.firstWhereOrNull(
      (element) => element.repository.name == currentRepositoryName,
    );
    if (currentApplication != null) {
      return currentApplication;
    }
    final selectedApplicationName = ref.read(selectOneProvider(
      title: "Select a codemagic application...",
      options: applications.map((e) => e.appName).toList(),
    ));
    final selectedApplication = applications.firstWhereOrNull(
      (element) => element.appName == selectedApplicationName,
    );
    if (selectedApplication == null) {
      logger.err("Application not found.");
      exit.exitWithError();
    }
    return selectedApplication;
  }

  /// ユーザーが選択した[Workflow]を取得する。
  Workflow _getWorkflow(List<Workflow> workflows) {
    final selectedWorkflowName = ref.read(selectOneProvider(
      title: "Select a workflow...",
      options: workflows.map((e) => e.name).toList(),
    ));
    final selectedWorkflow = workflows.firstWhereOrNull(
      (element) => element.name == selectedWorkflowName,
    );
    if (selectedWorkflow == null) {
      logger.err("Workflows is Empty.");
      exit.exitWithError();
    }
    return selectedWorkflow;
  }

  /// ビルドを開始する。
  Future<String> _startBuild({
    required Application selectedApplication,
    required Workflow selectedWorkflow,
    required String branch,
  }) async {
    final buildRepository = ref.read(buildRepositoryProvider);
    final buildId = await buildRepository.startBuild(
      token: token!,
      appId: selectedApplication.id,
      workflowId: selectedWorkflow.id,
      branch: branch,
    );
    logger.success("--- Build process started! ---");
    logger.success(
        "You’ll get a notification when it’s done. Keep this running to receive the notification. Press Ctrl + C to stop at any time.");
    logger.info("""
Build ID: $buildId
Branch: $branch
Application: ${selectedApplication.appName}
Workflow: ${selectedWorkflow.name}
    """);
    return buildId;
  }

  /// ビルドが以下のステータスになるまで待機する。
  /// - [BuildStatus.finished]
  /// - [BuildStatus.failed]
  /// - [BuildStatus.canceled]
  Future<void> _waitBuild(String buildId, Application application) async {
    final buildRepository = ref.read(buildRepositoryProvider);
    while (true) {
      final build = await buildRepository.getBuildStatus(
        token: token!,
        buildId: buildId,
      );
      switch (build.status) {
        case BuildStatus.queued:
          logger.info("Build queued...");
          break;
        case BuildStatus.preparing:
          logger.info("Preparing build machine...");
          break;
        case BuildStatus.fetching:
          logger.info("Fetching app sources...");
          break;
        case BuildStatus.testing:
          logger.info("Testing...");
          break;
        case BuildStatus.building:
          logger.info("Building...");
          break;
        case BuildStatus.publishing:
          logger.info("Publishing...");
          break;
        case BuildStatus.warning:
          logger.warn("Build warning.");
          break;
        case BuildStatus.skipped:
          logger.warn("Build skipped.");
          break;
        case BuildStatus.finishing:
          logger.info("Build finishing...");
          break;
        case BuildStatus.timeout:
          logger.err("Build timeout.");
          _showNotification("Build timeout.", "Build timeout.");
          exit.exitWithError();
        case BuildStatus.canceled:
          logger.warn("Build canceled.");
          _showNotification("Build canceled.", "Build canceled.");
          exit.exitWithError();
        case BuildStatus.finished:
          final index = build.index ?? 0;
          final version = build.version ?? "0.0.0";
          logger.success("Build success.");
          logger.info("Build number: $index");
          logger.info("Version: $version");
          _showNotification("Build success.",
              "Codemagic Version: $version Build number: $index");
          exit.exitWithSuccess();
        case BuildStatus.failed:
          logger.err("Build failed.");
          logger.info(
              "  see https://codemagic.io/app/${application.id}/build/${build.id}");
          _showNotification("Build failed.", "Codemagic build failed.");
          exit.exitWithError();
      }
      await Future.delayed(Duration(seconds: 30));
    }
  }

  @override
  Future<void> run() async {
    // Codemagic APIで使用する環境変数がない場合はエラーを出力して終了する。
    if (token == null) {
      logger.err(
          "Error: API token is not set. Please set the API token as an environment variable and try again.");
      logger.info("""

To set the API token, follow these steps:

1. The access token is available in the Codemagic UI under Teams > Personal Account > Integrations > Codemagic API > Show.
2. Add the API token to your `~/.bash_profile` or `~/.zshrc` file.

  # bash
  echo 'export CODEMAGIC_API_TOKEN=your_api_token_here' >> ~/.bash_profile
  source ~/.bash_profile
  
  # zsh
  echo 'export CODEMAGIC_API_TOKEN=your_api_token_here' >> ~/.zshrc
  source ~/.zshrc
""");
      exit.exitWithError();
    }

    // アプリケーション一覧を取得する。
    logger.info("Fetching codemagic applications...");
    final applicationRepository = ref.read(applicationRepositoryProvider);
    final applications =
        await applicationRepository.getRepositories(token: token!);
    if (applications.isEmpty) {
      logger.err("Applications is Empty.");
      exit.exitWithError();
    }
    final selectedApplication = _getApplication(applications);

    final workflows = selectedApplication.workflows.values.toList();
    final selectedWorkflow = _getWorkflow(workflows);

    // ビルドを開始する。
    final buildId = await _startBuild(
      selectedApplication: selectedApplication,
      selectedWorkflow: selectedWorkflow,
      branch: argResults!['branch'],
    );

    await _waitBuild(buildId, selectedApplication);
    return;
  }
}

/// OSの通知を表示する。
void _showNotification(String title, String message) {
  Process.runSync('osascript', [
    '-e',
    'display notification "$message" with title "$title"',
  ]);
}
