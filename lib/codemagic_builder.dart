import 'package:args/command_runner.dart';
import 'package:codemagic_builder/command/start_command.dart';
import 'package:riverpod/riverpod.dart';

void setCommandRunner(List<String> args) {
  final container = ProviderContainer();

  CommandRunner("dgit", "A dart implementation of distributed version control.")
    ..addCommand(container.read(startCommandProvider))
    ..run(args);
}
