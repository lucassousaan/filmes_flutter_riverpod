import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:filmes_flutter_riverpod/core/errors/failures.dart';
import 'package:filmes_flutter_riverpod/features/movies/data/datasource/movie_remote_data_source.dart';
import 'package:filmes_flutter_riverpod/features/movies/data/models/movie_model.dart';
import 'package:filmes_flutter_riverpod/features/movies/domain/entities/movie.dart';
import 'package:filmes_flutter_riverpod/features/movies/domain/repositories/movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieRemoteDataSource remoteDataSource;

  MovieRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<Movie>>> getPopularMovies() async {
    try {
      final response = await remoteDataSource.getPopularMovies();

      final movieModels = response.results;

      final movies = movieModels.map((model) => model.toEntity()).toList();

      return Right(movies);
    } on DioException catch (e) {
      return Left(
        ServerFailure('Erro ao buscar dados do servidor: ${e.message}'),
      );
    } catch (e) {
      return Left(GeneralFailure('Um erro inesperado aconteceu: $e'));
    }
  }

  @override
  Future<Either<Failure, Movie>> getMovieDetails(int movieId) {
    // TODO: implement getMovieDetails
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRatedMovies() {
    // TODO: implement getTopRatedMovies
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Movie>>> getTrendingMovies() {
    // TODO: implement getTrendingMovies
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Movie>>> getUpcomingMovies() {
    // TODO: implement getUpcomingMovies
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Movie>>> searchMovies(String query) {
    // TODO: implement searchMovies
    throw UnimplementedError();
  }
}
