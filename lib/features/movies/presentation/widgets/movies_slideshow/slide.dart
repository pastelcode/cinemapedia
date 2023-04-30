part of 'movies_slideshow.dart';

class _Slide extends StatelessWidget {
  const _Slide({
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(
    BuildContext context,
  ) {
    const decoration = BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.black45,
          blurRadius: 20,
          offset: Offset(
            0,
            5,
          ),
        ),
      ],
    );

    return Padding(
      padding: const EdgeInsets.only(
        bottom: 30,
      ),
      child: DecoratedBox(
        decoration: decoration,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(
              20,
            ),
          ),
          child: SizedBox(
            height: 210,
            child: Image.network(
              movie.backdropPath,
              fit: BoxFit.cover,
              loadingBuilder: (
                BuildContext context,
                Widget child,
                ImageChunkEvent? loadingProgress,
              ) {
                if (loadingProgress != null) {
                  return const DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.black12,
                    ),
                  );
                }

                return FadeIn(
                  child: child,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
