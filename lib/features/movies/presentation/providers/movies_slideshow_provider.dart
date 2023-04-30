import 'package:cinemapedia/features/movies/domain/entities/entities.dart';
import 'package:cinemapedia/features/movies/presentation/providers/movies_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final moviesSlideshowProvider = Provider<List<Movie>>(
  (
    ref,
  ) {
    final nowPlayingMovies = ref.watch(
      nowPlayingMoviesProvider,
    );

    if (nowPlayingMovies.length < 6) {
      return nowPlayingMovies;
    }

    return nowPlayingMovies.sublist(
      0,
      7,
    );
  },
);
