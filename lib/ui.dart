part of 'main.dart';

/// {@template ui}
/// The initial point for the UI application part.
///
/// [MaterialApp] is introduced here.
/// {@endtemplate}
class _Ui extends StatelessWidget {
  /// {@macro ui}
  const _Ui();

  @override
  Widget build(
    BuildContext context,
  ) {
    return MaterialApp(
      theme: ApplicationTheme.lightTheme,
      home: const Scaffold(
        body: Center(
          child: Text(
            'Hello World!',
          ),
        ),
      ),
    );
  }
}
