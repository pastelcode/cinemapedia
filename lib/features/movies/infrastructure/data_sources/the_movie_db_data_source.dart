import 'package:cinemapedia/core/constants/environment.dart';
import 'package:cinemapedia/features/movies/domain/data_sources/movies_data_source.dart';
import 'package:cinemapedia/features/movies/domain/entities/movie.dart';
import 'package:cinemapedia/features/movies/infrastructure/mappers/mappers.dart';
import 'package:cinemapedia/features/movies/infrastructure/models/models.dart';
import 'package:dio/dio.dart';

class TheMovieDbDataSource implements MoviesDataSource {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      queryParameters: {
        'api_key': Environment.theMovieDbApiKey,
        'language': 'en-US',
      },
    ),
  );

  @override
  Future<List<Movie>> getNowPlayingMovies({
    int page = 1,
  }) async {
    final response = await dio.get(
      '/movie/now_playing',
    );

    final theMovieDbResponse = TheMovieDbResponse.fromMap(
      map: response.data as Map<String, dynamic>,
    );

    final movies = theMovieDbResponse.results.where(
      (
        TheMovieDbMovieModel theMovieDbMovieModel,
      ) {
        return theMovieDbMovieModel.posterPath.isNotEmpty;
      },
    ).map(
      (
        TheMovieDbMovieModel theMovieDbMovieModel,
      ) {
        return MovieMapper.theMovieDbToEntity(
          movieDb: theMovieDbMovieModel,
        );
      },
    ).toList();

    return [];
  }
}
