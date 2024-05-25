import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:codemagic_builder/entity/application/application.dart';
import 'package:codemagic_builder/entity/workflow/workflow.dart';
import 'package:codemagic_builder/repository/application_repository.dart';
import 'package:codemagic_builder/utils/git.dart';
import 'package:codemagic_builder/utils/logger.dart';
import 'package:collection/collection.dart';
import 'package:dart_console/dart_console.dart';

/// ビルドをスタートするためのコマンド。
class StartCommand extends Command {
  @override
  final name = "start";

  @override
  final description = "Start a new build";

  StartCommand() {
    argParser.addOption(
      'branch',
      abbr: 'b',
      defaultsTo: getCurrentBranch(),
      allowed: getBranches(),
      help: 'branch name',
    );
  }

  /// [Application]を取得する。
  ///
  /// 現在のリポジトリ名からApplicationを取得し、取得できない場合はユーザーに選択させる。
  Application getApplication(List<Application> applications) {
    final currentRepositoryName = getCurrentRepositoryName();
    final currentApplication = applications.firstWhereOrNull(
      (element) => element.repository.name == currentRepositoryName,
    );
    if (currentApplication != null) {
      return currentApplication;
    }
    logger.info("Select an application.");
    final selectedApplicationName = selectOne(
      title: "Select an application...",
      options: applications.map((e) => e.appName).toList(),
    );
    final selectedApplication = applications.firstWhereOrNull(
      (element) => element.appName == selectedApplicationName,
    );
    if (selectedApplication == null) {
      logger.err("Application not found.");
      exit(1);
    }
    return selectedApplication;
  }

  /// ユーザーが選択した[Workflow]を取得する。
  Workflow getWorkflow(List<Workflow> workflows) {
    final selectedWorkflowName = selectOne(
      title: "Select a workflow...",
      options: workflows.map((e) => e.name).toList(),
    );
    final selectedWorkflow = workflows.firstWhereOrNull(
      (element) => element.name == selectedWorkflowName,
    );
    if (selectedWorkflow == null) {
      logger.err("Workflow not found.");
      exit(1);
    }
    return selectedWorkflow;
  }

  @override
  void run() async {
    // Codemagic APIで使用する環境変数がない場合はエラーを出力して終了する。
    if (Platform.environment['CODEMAGIC_API_TOKEN'] == null) {
      logger.err("CODEMAGIC_API_TOKEN is not set.");
      exit(1);
    }

    // アプリケーション一覧を取得する。
    logger.info("Fetching codemagic applications...");
    final applicationRepository = ApplicationRepository();
    final applications = await applicationRepository.getRepositories(
      token: Platform.environment['CODEMAGIC_API_TOKEN']!,
    );
    final selectedApplication = getApplication(applications);

    final workflows = selectedApplication.workflows.values.toList();
    final selectedWorkflow = getWorkflow(workflows);
    final branch = argResults!['branch'] as String;
    return;
  }
}

/// 配列の中からユーザーに1つを選択させるメソッド。
///
/// ユーザーは十字キーで選択し、Enterキーで確定する。
String selectOne({
  required String title,
  required List<String> options,
}) {
  final console = Console();
  var selectedIndex = 0;

  void renderMenu() {
    console.clearScreen();
    console.writeLine(title);
    for (var i = 0; i < options.length; i++) {
      if (i == selectedIndex) {
        console.setForegroundColor(ConsoleColor.white);
        console.setBackgroundColor(ConsoleColor.blue);
        console.writeLine(options[i]);
        console.resetColorAttributes();
      } else {
        console.writeLine(options[i]);
      }
    }
  }

  renderMenu();

  while (true) {
    final key = console.readKey();

    if (key.controlChar == ControlCharacter.arrowDown) {
      selectedIndex = (selectedIndex + 1) % options.length;
    } else if (key.controlChar == ControlCharacter.arrowUp) {
      selectedIndex = (selectedIndex - 1 + options.length) % options.length;
    } else if (key.controlChar == ControlCharacter.enter) {
      console.clearScreen();
      return options[selectedIndex];
    }

    renderMenu();
  }
}
