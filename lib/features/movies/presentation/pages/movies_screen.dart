import 'package:filmes_flutter_riverpod/features/movies/presentation/providers/movie_presentation_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/movie_category_section.dart';

class MoviesScreen extends ConsumerWidget {
  const MoviesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final popularMoviesAsync = ref.watch(popularMoviesProvider);
    final topRatedMoviesAsync = ref.watch(topRatedMoviesProvider);
    final upcomingMoviesAsync = ref.watch(upcomginMoviesProvider);
    final trendingMoviesAsync = ref.watch(trendingMoviesProvider);

    return ListView(
      children: [
        MovieCategorySection(
          title: "Melhores Avaliados",
          moviesAsync: topRatedMoviesAsync,
        ),
        MovieCategorySection(
          title: "Populares",
          moviesAsync: popularMoviesAsync,
        ),
        MovieCategorySection(
          title: "Próximos Lançamentos",
          moviesAsync: upcomingMoviesAsync,
        ),
        MovieCategorySection(
          title: "Em Alta Hoje",
          moviesAsync: trendingMoviesAsync,
        ),
      ],
    );
  }
}
