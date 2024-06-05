import 'package:interact/interact.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'select_one.g.dart';

/// 配列の中からユーザーに1つを選択させるメソッド。
///
/// ユーザーは十字キーで選択し、Enterキーで確定する。
@riverpod
String selectOne(
  SelectOneRef ref, {
  required String title,
  required List<String> options,
}) {
  final selection = Select(
    prompt: title,
    options: options,
  ).interact();
  return options[selection];
}
