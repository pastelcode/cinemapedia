import 'package:cinemapedia/core/router/routes.dart';
import 'package:cinemapedia/features/movies/movies.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

/// The router for this application.
final appRouter = GoRouter(
  debugLogDiagnostics: true,
  navigatorKey: _rootNavigatorKey,
  initialLocation: ApplicationRoute.home.path,
  routes: <RouteBase>[
    GoRoute(
      name: ApplicationRoute.home.name,
      path: ApplicationRoute.home.path,
      parentNavigatorKey: _rootNavigatorKey,
      builder: (
        BuildContext context,
        GoRouterState state,
      ) {
        return const HomeScreen();
      },
    ),
  ],
);
