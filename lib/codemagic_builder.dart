import 'package:args/command_runner.dart';
import 'package:codemagic_builder/command/start_command.dart';

void setCommandRunner(List<String> args) {
  CommandRunner("dgit", "A dart implementation of distributed version control.")
    ..addCommand(StartCommand())
    ..run(args);
}
