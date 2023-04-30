import 'package:cinemapedia/features/movies/domain/entities/entities.dart';
import 'package:cinemapedia/features/movies/infrastructure/models/models.dart';

class MovieMapper {
  static Movie theMovieDbToEntity({
    required TheMovieDbMovieModel movieDb,
  }) {
    return Movie(
      isForAdults: movieDb.adult,
      backdropPath: movieDb.backdropPath.isNotEmpty
          ? 'https://image.tmdb.org/t/p/w500${movieDb.backdropPath}'
          : 'https://maxler.com/local/templates/maxler/assets/img/not-found.png',
      genreIds: movieDb.genreIds.map(
        (
          int id,
        ) {
          return id.toString();
        },
      ).toList(),
      id: movieDb.id.toString(),
      originalLanguage: movieDb.originalLanguage,
      originalTitle: movieDb.originalTitle,
      overview: movieDb.overview,
      popularity: movieDb.popularity,
      posterPath: 'https://image.tmdb.org/t/p/w500${movieDb.posterPath}',
      releaseDate: movieDb.releaseDate,
      title: movieDb.title,
      hasVideo: movieDb.video,
      voteAverage: movieDb.voteAverage,
      voteCount: movieDb.voteCount,
    );
  }
}
