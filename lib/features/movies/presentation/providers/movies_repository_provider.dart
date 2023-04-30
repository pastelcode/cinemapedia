import 'package:cinemapedia/features/movies/domain/repositories/repositories.dart';
import 'package:cinemapedia/features/movies/infrastructure/data_sources/data_sources.dart';
import 'package:cinemapedia/features/movies/infrastructure/repositories/repositories.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final moviesRepositoryProvider = Provider<MoviesRepository>(
  (
    ProviderRef<MoviesRepository> ref,
  ) {
    return MoviesRepositoryImpl(
      moviesDataSource: TheMovieDbDataSource(),
    );
  },
);
