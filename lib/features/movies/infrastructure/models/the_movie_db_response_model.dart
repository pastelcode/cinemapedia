import 'dart:convert';

import 'package:cinemapedia/features/movies/infrastructure/models/models.dart';

class TheMovieDbResponse {
  const TheMovieDbResponse({
    required this.dates,
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalTheMovieDbMovieModels,
  });

  factory TheMovieDbResponse.fromMap({
    required Map<String, dynamic> map,
  }) {
    return TheMovieDbResponse(
      dates: map['dates'] != null
          ? Dates.fromMap(
              map: map['dates'] as Map<String, dynamic>,
            )
          : null,
      page: map['page'] as int,
      results: List<TheMovieDbMovieModel>.from(
        (map['results'] as List<dynamic>).map(
          (
            dynamic map,
          ) {
            return TheMovieDbMovieModel.fromMap(
              map: map as Map<String, dynamic>,
            );
          },
        ),
      ),
      totalPages: map['total_pages'] as int,
      totalTheMovieDbMovieModels: map['total_results'] as int,
    );
  }

  factory TheMovieDbResponse.fromJson({
    required String string,
  }) {
    return TheMovieDbResponse.fromMap(
      map: json.decode(
        string,
      ) as Map<String, dynamic>,
    );
  }

  final Dates? dates;
  final int page;
  final List<TheMovieDbMovieModel> results;
  final int totalPages;
  final int totalTheMovieDbMovieModels;

  TheMovieDbResponse copyWith({
    Dates? dates,
    int? page,
    List<TheMovieDbMovieModel>? results,
    int? totalPages,
    int? totalTheMovieDbMovieModels,
  }) {
    return TheMovieDbResponse(
      dates: dates ?? this.dates,
      page: page ?? this.page,
      results: results ?? this.results,
      totalPages: totalPages ?? this.totalPages,
      totalTheMovieDbMovieModels:
          totalTheMovieDbMovieModels ?? this.totalTheMovieDbMovieModels,
    );
  }

  String toJson() {
    return json.encode(
      toMap(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'dates': dates?.toMap(),
      'page': page,
      'results': List<dynamic>.from(
        results.map(
          (
            TheMovieDbMovieModel result,
          ) {
            return result.toMap();
          },
        ),
      ),
      'total_pages': totalPages,
      'total_results': totalTheMovieDbMovieModels,
    };
  }
}

class Dates {
  const Dates({
    required this.maximum,
    required this.minimum,
  });

  factory Dates.fromMap({
    required Map<String, dynamic> map,
  }) {
    return Dates(
      maximum: DateTime.parse(
        map['maximum'] as String,
      ),
      minimum: DateTime.parse(
        map['minimum'] as String,
      ),
    );
  }

  factory Dates.fromJson({
    required String string,
  }) {
    return Dates.fromMap(
      map: json.decode(
        string,
      ) as Map<String, dynamic>,
    );
  }

  final DateTime maximum;
  final DateTime minimum;

  Dates copyWith({
    DateTime? maximum,
    DateTime? minimum,
  }) {
    return Dates(
      maximum: maximum ?? this.maximum,
      minimum: minimum ?? this.minimum,
    );
  }

  String toJson() {
    return json.encode(
      toMap(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'maximum': '${maximum.year.toString().padLeft(
            4,
            '0',
          )}-${maximum.month.toString().padLeft(
            2,
            '0',
          )}-${maximum.day.toString().padLeft(
            2,
            '0',
          )}',
      'minimum': '${minimum.year.toString().padLeft(
            4,
            '0',
          )}-${minimum.month.toString().padLeft(
            2,
            '0',
          )}-${minimum.day.toString().padLeft(
            2,
            '0',
          )}',
    };
  }
}
