import 'package:cinemapedia/features/movies/domain/data_sources/data_sources.dart';
import 'package:cinemapedia/features/movies/domain/entities/entities.dart';
import 'package:cinemapedia/features/movies/domain/repositories/repositories.dart';

class MoviesRepositoryImpl implements MoviesRepository {
  MoviesRepositoryImpl({
    required this.moviesDataSource,
  });

  final MoviesDataSource moviesDataSource;

  @override
  Future<List<Movie>> getNowPlayingMovies({
    int page = 1,
  }) {
    return moviesDataSource.getNowPlayingMovies(
      page: page,
    );
  }
}
