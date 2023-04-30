import 'package:flutter/material.dart';

/// The class containing the theme and their properties for this application.
mixin ApplicationTheme {
  static ColorScheme get _lightColorScheme {
    return ColorScheme.fromSeed(
      seedColor: const Color(
        0xff2862f5,
      ),
    );
  }

  static ThemeData _getThemeBasedOnColorScheme({
    required ColorScheme colorScheme,
  }) {
    return ThemeData(
      useMaterial3: true,
      colorScheme: _lightColorScheme,
    );
  }

  /// The light theme for this application.
  static ThemeData get lightTheme {
    return _getThemeBasedOnColorScheme(
      colorScheme: _lightColorScheme,
    );
  }
}
