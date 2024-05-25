import 'package:dart_console/dart_console.dart';
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
