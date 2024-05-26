import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:codemagic_builder/command/start/start_command.dart';
import 'package:codemagic_builder/controller/logger/logger.dart';
import 'package:riverpod/riverpod.dart';
import 'package:yaml/yaml.dart';

void setCommandRunner(List<String> args) async {
  final container = ProviderContainer();
  final runner = CommandRunner(
    "cmagic",
    "A command-line tool for Codemagic.",
    usageLineLength: 80,
  );
  runner.addCommand(container.read(startCommandProvider));
  runner.argParser
      .addFlag('version', help: 'Print the version.', negatable: false);

  final result = runner.parse(args);
  // バージョンを表示する。
  if (result['version']) {
    final pubspec = File('pubspec.yaml');
    final pubspecContent = await pubspec.readAsString();
    final yamlMap = loadYaml(pubspecContent);

    final version = yamlMap['version'];
    container.read(loggerProvider).info(version);
    exit(0);
  }

  runner.run(args).catchError((error) {
    if (error is! UsageException) throw error;
    print(error);
    exit(64);
  });
}
