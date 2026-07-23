import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
    required this.body,
    this.toolbar,
    this.statusBar,
  });

  final Widget body;
  final PreferredSizeWidget? toolbar;
  final Widget? statusBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: toolbar,
      body: body,
      bottomNavigationBar: statusBar,
    );
  }
}
