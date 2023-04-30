/// {@template core.router.applicationRoute}
/// All routes on the application.
/// {@endtemplate}
enum ApplicationRoute {
  /// The home route.
  ///
  /// Should show all movies screen.
  home(
    name: 'Home',
    path: '/',
  );

  /// {@macro core.router.applicationRoute}
  const ApplicationRoute({
    required this.name,
    required this.path,
  });

  /// The name for this route.
  final String name;

  /// The path of this route.
  final String path;
}