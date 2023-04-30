import 'package:equatable/equatable.dart';

/// {@template movies.domain.entities.movie}
/// A movie.
/// {@endtemplate}
class Movie extends Equatable {
  /// {@macro movies.domain.entities.movie}
  const Movie({
    required this.isForAdults,
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.hasVideo,
    required this.voteAverage,
    required this.voteCount,
  });

  /// Whether this movie contains explicit content made for adults.
  final bool isForAdults;

  /// The backdrop image path of this movie.
  final String backdropPath;

  /// The ids of genres this movie is made for.
  final List<String> genreIds;

  /// The id of this movie.
  final String id;

  /// The original language code of this movie.
  final String originalLanguage;

  /// The original title of this movie.
  final String originalTitle;

  /// A short description about this movie is about.
  final String overview;

  /// The popularity percentage of this movie.
  final double popularity;

  /// The poster path of this image.
  final String posterPath;

  /// The date this movie was released at.
  final DateTime releaseDate;

  /// The title of this movie.
  final String title;

  /// Whether this movie has a trailer.
  final bool hasVideo;

  /// The vote average this movie has.
  final double voteAverage;

  /// The total of votes for this movie.
  final int voteCount;

  @override
  List<Object?> get props {
    return [
      isForAdults,
      backdropPath,
      genreIds,
      id,
      originalLanguage,
      originalTitle,
      overview,
      popularity,
      posterPath,
      releaseDate,
      title,
      hasVideo,
      voteAverage,
      voteCount,
    ];
  }
}
