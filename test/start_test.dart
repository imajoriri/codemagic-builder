import 'dart:io';

import 'package:codemagic_builder/codemagic_builder.dart';
import 'package:test/test.dart';

void main() {
  group('start', () {
    setUp(() async {
      // 環境変数を設定する
      // await Process.run('export', ['CODEMAGIC_API_TOKEN'],
      //     environment: {'CODEMAGIC_API_TOKEN': 'dummy'});
    });
    test('need a CODEMAGIC_API_TOKEN env.', () async {
      await Process.run('dart', ['bin/main.dart', 'start']);
    });
    test('ブランチのデフォルトは現在のブランチ', () async {
      // final result = await Process.run('dart', ['bin/main.dart', 'start']);
    });
    test('', () {});
    test('', () {});
  });
}
