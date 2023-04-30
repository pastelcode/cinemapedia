import 'package:animate_do/animate_do.dart';
import 'package:cinemapedia/features/movies/domain/entities/entities.dart';
import 'package:flutter/material.dart';

part 'slide.dart';
part 'title.dart';

class MoviesHorizontalListView extends StatelessWidget {
  const MoviesHorizontalListView({
    required this.movies,
    this.title,
    this.subtitle,
    this.onEndReached,
    super.key,
  });

  final List<Movie> movies;
  final String? title;
  final String? subtitle;
  final void Function()? onEndReached;

  @override
  Widget build(
    BuildContext context,
  ) {
    return SizedBox(
      height: 350,
      child: Column(
        children: <Widget>[
          if (title is String || subtitle is String)
            _Title(
              title: title,
              subtitle: subtitle,
            ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movies.length,
              itemBuilder: (
                BuildContext context,
                int index,
              ) {
                final movie = movies[index];

                return _Slide(
                  movie: movie,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
