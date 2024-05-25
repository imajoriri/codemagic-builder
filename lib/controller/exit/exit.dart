import 'dart:io' as io;

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'exit.g.dart';

@Riverpod(keepAlive: true)
Exit exit(ExitRef ref) => Exit();

class Exit {
  /// プログラムをエラーコード1で終了する
  Never exitWithError() {
    io.exit(1);
  }

  /// プログラムを正常終了する
  Never exitWithSuccess() {
    io.exit(0);
  }
}
