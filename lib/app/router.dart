import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const Scaffold(
            body: Center(
              child: Text(
                'Fast File Organizer\n\nVersion 0.1.0',
                textAlign: TextAlign.center,
              ),
            ),
          );
        },
      ),
    ],
  );
}
