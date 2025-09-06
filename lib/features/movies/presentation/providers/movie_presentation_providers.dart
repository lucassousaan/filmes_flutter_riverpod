import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/usecases/usecase.dart';
import '../../data/providers/movie_data_providers.dart';
import '../../domain/entities/movie.dart';
import '../../domain/usecases/get_popular_movies.dart';

part 'movie_presentation_providers.g.dart';

@riverpod
GetPopularMovies getPopularMoviesUseCase(Ref ref) {
  final repository = ref.watch(movieRepositoryProvider);
  return GetPopularMovies(repository);
}

@riverpod
Future<List<Movie>> popularMovies(Ref ref) async {
  final getPopularMovies = ref.watch(getPopularMoviesUseCaseProvider);

  final result = await getPopularMovies(NoParams());

  return result.fold(
    (failure) => throw failure,
    (movies) => movies,
  );
}
