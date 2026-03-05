import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyRouter {
  static final GoRouter goRouter = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
      ),
    ],
  );
}
