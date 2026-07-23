import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/usecases/load_directory_usecase.dart';
import '../state/explorer_state.dart';

class ExplorerNotifier
    extends StateNotifier<ExplorerState> {
  ExplorerNotifier(
    this.loadDirectory,
  ) : super(const ExplorerState());

  final LoadDirectoryUseCase loadDirectory;

  Future<void> openFolder(String path) async {
    state = state.copyWith(
      status: ExplorerStatus.loading,
      currentPath: path,
    );

    try {
      final result = await loadDirectory(path);

      state = state.copyWith(
        status: result.isEmpty
            ? ExplorerStatus.empty
            : ExplorerStatus.loaded,
        content: result,
      );
    } catch (e) {
      state = state.copyWith(
        status: ExplorerStatus.error,
        errorMessage: e.toString(),
      );
    }
  }
}
