import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/selection_provider.dart';

class SelectionBadge extends ConsumerWidget {
  const SelectionBadge({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(selectionProvider);

    return Chip(
      avatar: const Icon(Icons.check_circle),
      label: Text("${state.count} selected"),
    );
  }
}
