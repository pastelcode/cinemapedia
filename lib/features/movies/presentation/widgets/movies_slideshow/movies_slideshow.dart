import 'package:animate_do/animate_do.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:cinemapedia/features/movies/domain/entities/entities.dart';
import 'package:flutter/material.dart';

part 'slide.dart';

class MoviesSlideshow extends StatelessWidget {
  const MoviesSlideshow({
    required this.movies,
    super.key,
  });

  final List<Movie> movies;

  @override
  Widget build(
    BuildContext context,
  ) {
    return SizedBox(
      height: 210,
      width: double.infinity,
      child: Swiper(
        viewportFraction: .8,
        scale: .9,
        autoplay: true,
        pagination: SwiperPagination(
          margin: const EdgeInsets.only(),
          builder: DotSwiperPaginationBuilder(
            activeColor: Theme.of(
              context,
            ).colorScheme.primary,
            color: Theme.of(
              context,
            ).colorScheme.secondary.withOpacity(
                  .5,
                ),
            size: 7,
          ),
        ),
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
    );
  }
}
