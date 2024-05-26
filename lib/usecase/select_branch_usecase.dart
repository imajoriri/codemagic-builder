import 'package:codemagic_builder/entity/application/application.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'select_branch_usecase.g.dart';

@riverpod
SelectBranchUseCase selectBranchUseCase(SelectBranchUseCaseRef ref,
        Application application, String defaultBranch) =>
    SelectBranchUseCase(
      ref: ref,
      application: application,
      defaultBranch: defaultBranch,
    );

/// ブランチを選択するユースケース。
///
/// ブランチを選択するためのUseCaseは、以下のような機能を提供する。
///
/// - [defaultBranch]が[application]のブランチ一覧に含まれていれば[defaultBranch]を返す。
/// - [defaultBranch]が[application]のブランチ一覧に含まれていなければ、nullを返す。
class SelectBranchUseCase {
  final Ref ref;
  final Application application;
  final String defaultBranch;

  SelectBranchUseCase({
    required this.ref,
    required this.application,
    required this.defaultBranch,
  });

  String? invoke() {
    final branches = application.branches;
    if (branches.contains(defaultBranch)) {
      return defaultBranch;
    }
    return null;
  }
}
