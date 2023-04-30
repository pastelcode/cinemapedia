import 'package:cinemapedia/features/movies/domain/entities/entities.dart';

abstract class MoviesRepository {
  Future<List<Movie>> getNowPlayingMovies({
    int page = 1,
  });
}
