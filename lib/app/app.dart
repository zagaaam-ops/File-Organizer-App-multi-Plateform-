import 'package:flutter/material.dart';

import '../core/theme/app_theme.dart';
import 'router.dart';

class FastFileOrganizerApp extends StatelessWidget {
  const FastFileOrganizerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'FlowFiles',
      routerConfig: AppRouter.router,
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      themeMode: ThemeMode.system,
    );
  }
}
