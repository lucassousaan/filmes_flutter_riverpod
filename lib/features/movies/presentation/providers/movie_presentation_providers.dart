import 'package:filmes_flutter_riverpod/features/movies/domain/usecases/get_trending_movies.dart';
import 'package:filmes_flutter_riverpod/features/movies/domain/usecases/get_upcoming_movies.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/usecases/usecase.dart';
import '../../data/providers/movie_data_providers.dart';
import '../../domain/entities/movie.dart';
import '../../domain/usecases/get_movie_details.dart';
import '../../domain/usecases/get_popular_movies.dart';
import '../../domain/usecases/get_top_rated_movies.dart';

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

@riverpod
GetTopRatedMovies getTopRatedMoviesUseCase(Ref ref) {
  final repository = ref.watch(movieRepositoryProvider);
  return GetTopRatedMovies(repository);
}

@riverpod
Future<List<Movie>> topRatedMovies(Ref ref) async {
  final getTopRatedMovies = ref.watch(getTopRatedMoviesUseCaseProvider);

  final result = await getTopRatedMovies(NoParams());

  return result.fold(
    (failure) => throw failure,
    (movies) => movies,
  );
}

@riverpod
GetUpcomingMovies getUpcomingMoviesUseCase(Ref ref) {
  final repository = ref.watch(movieRepositoryProvider);
  return GetUpcomingMovies(repository);
}

@riverpod
Future<List<Movie>> upcomginMovies(Ref ref) async {
  final getUpcomingMovies = ref.watch(getUpcomingMoviesUseCaseProvider);

  final result = await getUpcomingMovies(NoParams());

  return result.fold(
    (failure) => throw failure,
    (movies) => movies,
  );
}

@riverpod
GetTrendingMovies getTrendingMoviesUseCase(Ref ref) {
  final repository = ref.watch(movieRepositoryProvider);
  return GetTrendingMovies(repository);
}

@riverpod
Future<List<Movie>> trendingMovies(Ref ref) async {
  final getTrendingMovies = ref.watch(getTrendingMoviesUseCaseProvider);

  final result = await getTrendingMovies(NoParams());

  return result.fold(
    (failure) => throw failure,
    (movies) => movies,
  );
}

@riverpod
GetMovieDetails getMovieDetailsUseCase(Ref ref) {
  final repository = ref.watch(movieRepositoryProvider);
  return GetMovieDetails(repository);
}

@riverpod
Future<Movie> movieDetails(Ref ref, int movieId) async {
  final getMovieDetails = ref.watch(getMovieDetailsUseCaseProvider);

  final result = await getMovieDetails(MovieDetailsParams(movieId: movieId));

  return result.fold(
    (failure) => throw failure,
    (movie) => movie,
  );
}
