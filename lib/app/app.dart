import 'package:flutter/material.dart';

import 'router.dart';

class FastFileOrganizerApp extends StatelessWidget {
  const FastFileOrganizerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Fast File Organizer',

      debugShowCheckedModeBanner: false,

      routerConfig: AppRouter.router,

      themeMode: ThemeMode.system,

      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
      ),

      darkTheme: ThemeData.dark(
        useMaterial3: true,
      ),
    );
  }
}
