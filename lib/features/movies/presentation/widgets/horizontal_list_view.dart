import 'package:filmes_flutter_riverpod/features/movies/domain/entities/movie.dart';
import 'package:flutter/material.dart';

import 'movie_card.dart';

class HorizontalListView extends StatelessWidget {
  final List<Movie> movies;

  const HorizontalListView({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: movies.length,
        itemBuilder: (context, index) {
          final movie = movies[index];
          return MovieCard(movie: movie);
        },
      ),
    );
  }
}
