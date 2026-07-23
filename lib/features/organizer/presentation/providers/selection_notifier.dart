import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../shared/models/file_item.dart';
import '../../domain/entities/selection_state.dart';

class SelectionNotifier extends StateNotifier<SelectionState> {
  SelectionNotifier() : super(const SelectionState());

  void toggle(FileItem file) {
    final items = [...state.files];

    final exists = items.any((e) => e.path == file.path);

    if (exists) {
      items.removeWhere((e) => e.path == file.path);
    } else {
      items.add(file);
    }

    state = state.copyWith(files: items);
  }

  void clear() {
    state = const SelectionState();
  }
}
