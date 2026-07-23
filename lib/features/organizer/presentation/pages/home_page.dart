import 'package:flutter/material.dart';

import '../../../../core/widgets/app_scaffold.dart';
import '../../../../core/widgets/app_toolbar.dart';
import '../../../../core/widgets/status_bar.dart';
import '../widgets/split_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      toolbar: AppToolbar(),
      statusBar: StatusBar(),
      body: SplitView(
        left: _FilesPanel(),
        right: _DestinationPanel(),
      ),
    );
  }
}

class _FilesPanel extends StatelessWidget {
  const _FilesPanel();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Center(
        child: Text(
          "Files Panel\n\n(Coming in Commit 004)",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class _DestinationPanel extends StatelessWidget {
  const _DestinationPanel();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xfff5f5f5),
      child: const Center(
        child: Text(
          "Destination Panel\n\n(Coming in Commit 004)",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
