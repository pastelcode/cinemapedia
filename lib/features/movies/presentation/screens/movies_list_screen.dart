import 'package:flutter/material.dart';

/// {@template moviesList.presentation.screens.moviesListScreen}
/// An screen for a list of movies titles.
/// {@endtemplate}
class MoviesListScreen extends StatelessWidget {
  /// {@macro moviesList.presentation.screens.moviesListScreen}
  const MoviesListScreen({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return const Scaffold(
      body: Center(
        child: Icon(
          Icons.waving_hand,
          size: 96,
        ),
      ),
    );
  }
}
