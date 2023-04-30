/// {@template core.router.applicationRoute}
/// All routes on the application.
/// {@endtemplate}
enum ApplicationRoute {
  /// The route to show an overview of different movies categories.
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
