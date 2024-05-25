import 'dart:io';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'git.g.dart';

@Riverpod(keepAlive: true)
Git git(GitRef ref) => const Git();

class Git {
  const Git();

  /// ブランチ一覧を取得する
  ///
  /// 現在のブランチのアスタリスクは削除される
  List<String> getBranches() {
    var result = Process.runSync('git', ['branch']);
    var branches = result.stdout.toString().split('\n');
    branches = branches.where((branch) => branch.isNotEmpty).toList();
    for (var i = 0; i < branches.length; i++) {
      branches[i] = branches[i].trim();
      if (branches[i].startsWith('*')) {
        branches[i] = branches[i].substring(2);
      }
    }
    return branches;
  }

  /// 現在のブランチ名を取得する
  String getCurrentBranch() {
    var result = Process.runSync('git', ['branch']);
    var branches = result.stdout.toString().split('\n');
    branches = branches.where((branch) => branch.isNotEmpty).toList();
    for (var branch in branches) {
      if (branch.startsWith('*')) {
        return branch.substring(2);
      }
    }
    return '';
  }

  /// 現在のリポジトリ名を取得する
  String getCurrentRepositoryName() {
    var result = Process.runSync('git', ['remote', 'get-url', 'origin']);
    var url = result.stdout.toString().trim();
    var name = url.split('/').last;
    name = name.substring(0, name.length - 4);
    return name;
  }
}
