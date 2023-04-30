import 'package:cinemapedia/features/movies/presentation/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// {@template moviesList.presentation.screens.moviesListScreen}
/// An screen for a list of movies titles.
/// {@endtemplate}
class NowPlayingMoviesScreen extends StatelessWidget {
  /// {@macro moviesList.presentation.screens.moviesListScreen}
  const NowPlayingMoviesScreen({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return const Scaffold(
      body: _View(),
    );
  }
}

class _View extends ConsumerStatefulWidget {
  const _View();

  @override
  ConsumerState<_View> createState() {
    return _ViewState();
  }
}

class _ViewState extends ConsumerState<_View> {
  @override
  void initState() {
    super.initState();

    ref
        .read(
          nowPlayingMoviesProvider.notifier,
        )
        .loadNextPage();
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    final nowPlayingMovies = ref.watch(
      nowPlayingMoviesProvider,
    );

    if (nowPlayingMovies.isEmpty) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    return ListView.builder(
      itemCount: nowPlayingMovies.length,
      itemBuilder: (
        BuildContext context,
        int index,
      ) {
        final movie = nowPlayingMovies[index];

        return ListTile(
          onTap: () {},
          title: Text(
            movie.title,
          ),
        );
      },
    );
  }
}
