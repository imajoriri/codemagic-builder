// ignore_for_file: dead_code

import 'package:args/command_runner.dart';
import 'package:codemagic_builder/command/start/start_command.dart';
import 'package:codemagic_builder/controller/exit/exit.dart';
import 'package:codemagic_builder/controller/select_one/select_one.dart';
import 'package:codemagic_builder/controller/token/token.dart';
import 'package:codemagic_builder/entity/application/application.dart';
import 'package:codemagic_builder/entity/build/build.dart';
import 'package:codemagic_builder/entity/build_status/build_status.dart';
import 'package:codemagic_builder/entity/repository/repository.dart';
import 'package:codemagic_builder/entity/workflow/workflow.dart';
import 'package:codemagic_builder/repository/application_repository.dart';
import 'package:codemagic_builder/repository/build_repository.dart';
import 'package:codemagic_builder/controller/git/git.dart';
import 'package:codemagic_builder/controller/logger/logger.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'create_container.dart';
import 'start_test.mocks.dart';

@GenerateNiceMocks([
  // contrller
  MockSpec<Git>(),
  MockSpec<Logger>(),

  // repository
  MockSpec<ApplicationRepository>(),
  MockSpec<BuildRepository>(),
])
class MockExit extends Mock implements Exit {
  @override
  Never exitWithError() {
    throw Exception('exit');
  }

  @override
  Never exitWithSuccess() {
    throw Exception('exit');
  }
}

void main() {
  group('start', () {
    final applicationRepository = MockApplicationRepository();
    final buildRepository = MockBuildRepository();
    final logger = MockLogger();
    final git = MockGit();
    final exit = MockExit();

    final overrides = [
      applicationRepositoryProvider.overrideWithValue(applicationRepository),
      buildRepositoryProvider.overrideWithValue(buildRepository),
      loggerProvider.overrideWithValue(logger),
      gitProvider.overrideWithValue(git),
      exitProvider.overrideWithValue(exit),
      tokenProvider.overrideWithValue('token'),
      selectOneProvider(title: "", options: [])
          .overrideWith((ref) => 'codemagic_builder'),
    ];

    test('正常系', () async {
      final container = createContainer(overrides: [
        applicationRepositoryProvider.overrideWithValue(applicationRepository),
        buildRepositoryProvider.overrideWithValue(buildRepository),
        loggerProvider.overrideWithValue(logger),
        gitProvider.overrideWithValue(git),
        exitProvider.overrideWithValue(exit),
        tokenProvider.overrideWithValue('token'),
        selectOneProvider.overrideWith((ref) => 'result'),
      ]);

      when(git.getCurrentRepositoryName()).thenReturn('result');
      when(git.getCurrentBranch()).thenReturn('main');
      when(git.getBranches()).thenReturn(['main']);
      when(
        applicationRepository.getRepositories(token: 'token'),
      ).thenAnswer(
        (_) async => [
          Application(
            id: 'id',
            appName: 'result',
            repository: Repository(
              id: 1,
              htmlUrl: "https://github.com/owner/repository",
            ),
            branches: ['main'],
            workflows: {
              'id': Workflow(
                id: 'id',
                name: 'result',
                maxBuildDuration: 1000,
              ),
            },
          ),
        ],
      );

      when(
        buildRepository.startBuild(
          token: 'token',
          appId: 'id',
          workflowId: 'id',
          branch: 'main',
        ),
      ).thenAnswer(
        (_) async => 'id',
      );

      when(
        buildRepository.getBuildStatus(
          token: 'token',
          buildId: 'id',
        ),
      ).thenAnswer(
        (_) async => Build(id: "id", status: BuildStatus.finished),
      );

      final command = container.read(startCommandProvider);
      final commandRunner = CommandRunner("", "description")
        ..addCommand(command);
      try {
        await commandRunner.run(['start']);
      } catch (e) {
        expect(e, isA<Exception>());
      }
      verify(logger.success("--- Build process started! ---")).called(1);
    });

    test('tokenが空の場合、エラーを返す。', () async {
      final container = createContainer(overrides: [
        applicationRepositoryProvider.overrideWithValue(applicationRepository),
        buildRepositoryProvider.overrideWithValue(buildRepository),
        loggerProvider.overrideWithValue(logger),
        gitProvider.overrideWithValue(git),
        exitProvider.overrideWithValue(exit),
        tokenProvider.overrideWithValue(null),
      ]);

      final command = container.read(startCommandProvider);
      final commandRunner = CommandRunner("", "description")
        ..addCommand(command);
      try {
        await commandRunner.run(['start']);
      } catch (e) {
        expect(e, isA<Exception>());
      }
      verify(logger.err(
              "Error: API token is not set. Please set the API token as an environment variable and try again."))
          .called(1);
    });

    test('Applicationが空の場合、エラーを返す。', () async {
      final container = createContainer(overrides: overrides);

      when(
        applicationRepository.getRepositories(token: 'token'),
      ).thenAnswer(
        (_) async => [],
      );

      final command = container.read(startCommandProvider);
      final commandRunner = CommandRunner("", "description")
        ..addCommand(command);
      try {
        await commandRunner.run(['start']);
      } catch (e) {
        expect(e, isA<Exception>());
      }
      verify(logger.err("Applications is Empty.")).called(1);
    });
  });
}
