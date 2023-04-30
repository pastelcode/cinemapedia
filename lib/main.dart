import 'package:cinemapedia/core/router/router.dart';
import 'package:cinemapedia/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load();

  runApp(
    const ProviderScope(
      child: MainApp(),
    ),
  );
}

/// {@template ui}
/// The initial point for the UI application part.
///
/// [MaterialApp] is introduced here.
/// {@endtemplate}
class MainApp extends StatelessWidget {
  /// {@macro ui}
  const MainApp({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return MaterialApp.router(
      theme: ApplicationTheme.lightTheme,
      routerConfig: appRouter,
    );
  }
}
