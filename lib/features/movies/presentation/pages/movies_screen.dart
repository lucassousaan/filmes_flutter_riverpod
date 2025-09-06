import 'package:filmes_flutter_riverpod/features/movies/presentation/providers/movie_presentation_providers.dart';
import 'package:filmes_flutter_riverpod/features/movies/presentation/widgets/horizontal_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
        topRatedMoviesAsync.when(
          loading: () => SizedBox(
            height: 220,
            child: const Center(child: CircularProgressIndicator()),
          ),
          error: (err, stack) => Center(child: Text('Erro: $err')),
          data: (movies) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Melhores Avaliados',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  HorizontalListView(movies: movies),
                ],
              ),
            );
          },
        ),
        popularMoviesAsync.when(
          loading: () => SizedBox(
            height: 220,
            child: const Center(child: CircularProgressIndicator()),
          ),
          error: (err, stack) => Center(child: Text('Erro: $err')),
          data: (movies) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Populares',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  HorizontalListView(movies: movies),
                ],
              ),
            );
          },
        ),
        upcomingMoviesAsync.when(
          loading: () => SizedBox(
            height: 220,
            child: const Center(child: CircularProgressIndicator()),
          ),
          error: (err, stack) => Center(child: Text('Erro: $err')),
          data: (movies) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Próximos Lançamentos',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  HorizontalListView(movies: movies),
                ],
              ),
            );
          },
        ),
        trendingMoviesAsync.when(
          loading: () => SizedBox(
            height: 220,
            child: const Center(child: CircularProgressIndicator()),
          ),
          error: (err, stack) => Center(child: Text('Erro: $err')),
          data: (movies) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Em Alta Hoje',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  HorizontalListView(movies: movies),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
