import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/movie.dart';
import '../repositories/movie_repository.dart';

class GetUpcomingMovies implements UseCase<List<Movie>, NoParams> {
  final MovieRepository repository;
  GetUpcomingMovies(this.repository);

  @override
  Future<Either<Failure, List<Movie>>> call(NoParams params) async {
    return await repository.getUpcomingMovies();
  }
}
