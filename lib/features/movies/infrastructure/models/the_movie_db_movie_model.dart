import 'dart:convert';

import 'package:equatable/equatable.dart';

class TheMovieDbMovieModel extends Equatable {
  const TheMovieDbMovieModel({
    required this.adult,
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
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  factory TheMovieDbMovieModel.fromMap({
    required Map<String, dynamic> map,
  }) {
    return TheMovieDbMovieModel(
      adult: map['adult'] as bool,
      backdropPath: map['backdrop_path'] as String,
      genreIds: List<int>.from(
        (map['genre_ids'] as List<dynamic>).map(
          (
            dynamic id,
          ) {
            return id;
          },
        ),
      ),
      id: map['id'] as int,
      originalLanguage: map['original_language'] as String,
      originalTitle: map['original_title'] as String,
      overview: map['overview'] as String,
      popularity: (map['popularity'] as num).toDouble(),
      posterPath: map['poster_path'] as String,
      releaseDate: DateTime.parse(
        map['release_date'] as String,
      ),
      title: map['title'] as String,
      video: map['video'] as bool,
      voteAverage: (map['vote_average'] as num).toDouble(),
      voteCount: map['vote_count'] as int,
    );
  }

  factory TheMovieDbMovieModel.fromJson({
    required String string,
  }) {
    return TheMovieDbMovieModel.fromMap(
      map: json.decode(
        string,
      ) as Map<String, dynamic>,
    );
  }

  final bool adult;
  final String backdropPath;
  final List<int> genreIds;
  final int id;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final double popularity;
  final String posterPath;
  final DateTime releaseDate;
  final String title;
  final bool video;
  final double voteAverage;
  final int voteCount;

  TheMovieDbMovieModel copyWith({
    bool? adult,
    String? backdropPath,
    List<int>? genreIds,
    int? id,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    double? popularity,
    String? posterPath,
    DateTime? releaseDate,
    String? title,
    bool? video,
    double? voteAverage,
    int? voteCount,
  }) {
    return TheMovieDbMovieModel(
      adult: adult ?? this.adult,
      backdropPath: backdropPath ?? this.backdropPath,
      genreIds: genreIds ?? this.genreIds,
      id: id ?? this.id,
      originalLanguage: originalLanguage ?? this.originalLanguage,
      originalTitle: originalTitle ?? this.originalTitle,
      overview: overview ?? this.overview,
      popularity: popularity ?? this.popularity,
      posterPath: posterPath ?? this.posterPath,
      releaseDate: releaseDate ?? this.releaseDate,
      title: title ?? this.title,
      video: video ?? this.video,
      voteAverage: voteAverage ?? this.voteAverage,
      voteCount: voteCount ?? this.voteCount,
    );
  }

  String toJson() {
    return json.encode(
      toMap(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'adult': adult,
      'backdrop_path': backdropPath,
      'genre_ids': List<dynamic>.from(
        genreIds.map(
          (
            int id,
          ) {
            return id;
          },
        ),
      ),
      'id': id,
      'original_language': originalLanguage,
      'original_title': originalTitle,
      'overview': overview,
      'popularity': popularity,
      'poster_path': posterPath,
      'release_date': '${releaseDate.year.toString().padLeft(
            4,
            '0',
          )}-${releaseDate.month.toString().padLeft(
            2,
            '0',
          )}-${releaseDate.day.toString().padLeft(
            2,
            '0',
          )}',
      'title': title,
      'video': video,
      'vote_average': voteAverage,
      'vote_count': voteCount,
    };
  }

  @override
  List<Object?> get props {
    return [
      adult,
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
      video,
      voteAverage,
      voteCount,
    ];
  }
}
