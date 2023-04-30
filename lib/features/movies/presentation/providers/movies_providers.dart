import 'package:cinemapedia/features/movies/domain/entities/entities.dart';
import 'package:cinemapedia/features/movies/presentation/providers/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final nowPlayingMoviesProvider =
    StateNotifierProvider<MoviesNotifier, List<Movie>>(
  (
    ref,
  ) {
    final fetchMoreMovies = ref
        .watch(
          moviesRepositoryProvider,
        )
        .getNowPlayingMovies;

    return MoviesNotifier(
      fetchMoreMovies: fetchMoreMovies,
    );
  },
);

typedef MovieCallback = Future<List<Movie>> Function({
  int page,
});

class MoviesNotifier extends StateNotifier<List<Movie>> {
  MoviesNotifier({
    required this.fetchMoreMovies,
  }) : super(
          [],
        );

  final MovieCallback fetchMoreMovies;

  int _currentPage = 0;

  int get currentPage => _currentPage;

  set currentPage(int value) {
    _currentPage = value;
  }

  Future<void> loadNextPage() async {
    currentPage += 1;
    final movies = await fetchMoreMovies(
      page: currentPage,
    );
    state = [
      ...state,
      ...movies,
    ];
  }
}
