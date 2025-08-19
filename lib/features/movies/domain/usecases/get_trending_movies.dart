import 'package:dartz/dartz.dart';

import 'package:filmes_flutter_riverpod/core/errors/failures.dart';

import '../../../../core/usecases/usecase.dart';
import '../entities/movie.dart';
import '../repositories/movie_repository.dart';

class GetTrendingMovies implements UseCase<List<Movie>, NoParams> {
  final MovieRepository repository;

  GetTrendingMovies(this.repository);

  @override
  Future<Either<Failure, List<Movie>>> call(NoParams params) async {
    return await repository.getTrendingMovies();
  }
}
