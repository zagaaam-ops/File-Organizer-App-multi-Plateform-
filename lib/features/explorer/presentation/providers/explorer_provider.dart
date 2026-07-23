import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/datasources/file_system_datasource.dart';
import '../../data/repositories/explorer_repository_impl.dart';
import '../../domain/usecases/load_directory_usecase.dart';
import 'explorer_notifier.dart';
import '../state/explorer_state.dart';

final explorerProvider =
    StateNotifierProvider<
        ExplorerNotifier,
        ExplorerState>((ref) {
  final repository = ExplorerRepositoryImpl(
    const FileSystemDataSource(),
  );

  return ExplorerNotifier(
    LoadDirectoryUseCase(repository),
  );
});
