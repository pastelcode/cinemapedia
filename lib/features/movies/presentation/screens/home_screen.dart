import 'package:cinemapedia/core/presentation/widgets/widgets.dart';
import 'package:cinemapedia/features/movies/presentation/providers/providers.dart';
import 'package:cinemapedia/features/movies/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return const Scaffold(
      body: _View(),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

class _View extends ConsumerStatefulWidget {
  const _View();

  @override
  ConsumerState<_View> createState() {
    return _ViewState();
  }
}

class _ViewState extends ConsumerState<_View> {
  @override
  void initState() {
    super.initState();

    ref
        .read(
          nowPlayingMoviesProvider.notifier,
        )
        .loadNextPage();
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    final slideshowMovies = ref.watch(
      moviesSlideshowProvider,
    );
    final nowPlayingMovies = ref.watch(
      nowPlayingMoviesProvider,
    );

    return Column(
      children: <Widget>[
        const CustomAppBar(),
        MoviesSlideshow(
          movies: slideshowMovies,
        ),
        MoviesHorizontalListView(
          movies: nowPlayingMovies,
          title: 'Now playing',
          subtitle: 'Today',
        ),
      ],
    );
  }
}
