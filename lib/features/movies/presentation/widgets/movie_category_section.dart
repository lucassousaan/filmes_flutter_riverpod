import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/movie.dart';
import 'horizontal_list_shimmer.dart';
import 'horizontal_list_view.dart';

class MovieCategorySection extends StatelessWidget {
  const MovieCategorySection({
    super.key,
    required this.title,
    required this.moviesAsync,
  });

  final String title;
  final AsyncValue<List<Movie>> moviesAsync;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
          child: Text(
            title,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        moviesAsync.when(
          loading: () => const HorizontalListShimmer(),
          error: (err, stack) => Center(child: Text('Erro: $err')),
          data: (movies) => HorizontalListView(movies: movies),
        ),
      ],
    );
  }
}
