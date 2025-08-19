import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/movie.dart';

abstract class MovieRepository {
  /// Get the list of popular movies from the data source.
  /// Returns an [Either] that can contain:
  /// - A [ServerFailure] in case of an API error.
  /// - A list of [Movie] in case of success.
  Future<Either<Failure, List<Movie>>> getPopularMovies();

  /// Get the list of trending movies from the data source.
  Future<Either<Failure, List<Movie>>> getTrendingMovies();

  /// Get the list of top-rated movies from the data source.
  Future<Either<Failure, List<Movie>>> getTopRatedMovies();

  /// Get the list of upcoming movies from the data source.
  Future<Either<Failure, List<Movie>>> getUpcomingMovies();

  /// Get the details of a specific movie by its ID.
  Future<Either<Failure, Movie>> getMovieDetails(int movieId);

  /// Search for movies by a query string.
  Future<Either<Failure, List<Movie>>> searchMovies(String query);
}
