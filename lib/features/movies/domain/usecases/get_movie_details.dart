import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/movie.dart';
import '../repositories/movie_repository.dart';

class GetMovieDetails implements UseCase<Movie, MovieDetailsParams> {
  final MovieRepository repository;
  GetMovieDetails(this.repository);

  @override
  Future<Either<Failure, Movie>> call(MovieDetailsParams params) async {
    return await repository.getMovieDetails(params.movieId);
  }
}

class MovieDetailsParams extends Equatable {
  final int movieId;

  const MovieDetailsParams({required this.movieId});

  @override
  List<Object?> get props => [movieId];
}
