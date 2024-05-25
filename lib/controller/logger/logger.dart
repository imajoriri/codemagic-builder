import 'package:mason_logger/mason_logger.dart' as mason_logger;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'logger.g.dart';

@Riverpod(keepAlive: true)
Logger logger(LoggerRef ref) => Logger();

class Logger {
  final _logger = mason_logger.Logger(
    level: mason_logger.Level.verbose,
    theme: mason_logger.LogTheme(),
  );

  void err(String message) {
    _logger.err(message);
  }

  void info(String message) {
    _logger.info(message);
  }

  void success(String message) {
    _logger.success(message);
  }

  void warn(String message) {
    _logger.warn(message);
  }
}
