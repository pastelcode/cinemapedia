part of 'movies_horizontal_list_view.dart';

class _Slide extends StatelessWidget {
  const _Slide({
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: 150,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(
                  20,
                ),
              ),
              child: Image.network(
                movie.posterPath,
                width: 150,
                fit: BoxFit.cover,
                loadingBuilder: (
                  BuildContext context,
                  Widget child,
                  ImageChunkEvent? loadingProgress,
                ) {
                  if (loadingProgress != null) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  return FadeIn(
                    child: child,
                  );
                },
              ),
            ),
          ),
          SizedBox(
            width: 150,
            child: Text(
              movie.title,
              maxLines: 2,
              style: Theme.of(
                context,
              ).textTheme.titleMedium,
            ),
          ),
          DefaultTextStyle.merge(
            style: Theme.of(
              context,
            ).textTheme.bodyMedium,
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.star_half_outlined,
                  color: Colors.yellow.shade800,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '${movie.voteAverage}',
                  style: TextStyle(
                    color: Colors.yellow.shade900,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '${movie.popularity}',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
