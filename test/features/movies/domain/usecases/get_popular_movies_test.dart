import 'package:dartz/dartz.dart';
import 'package:filmes_flutter_riverpod/core/errors/failures.dart';
import 'package:filmes_flutter_riverpod/core/usecases/usecase.dart';
import 'package:filmes_flutter_riverpod/features/movies/domain/repositories/movie_repository.dart';
import 'package:filmes_flutter_riverpod/features/movies/domain/usecases/get_popular_movies.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../helpers/test_models.dart';

class MockMovieRepository extends Mock implements MovieRepository {}

void main() {
  late GetPopularMovies usecase;
  late MockMovieRepository mockMovieRepository;

  setUp(() {
    mockMovieRepository = MockMovieRepository();
    usecase = GetPopularMovies(mockMovieRepository);
  });

  group("GetPopularMovies", () {
    test('deve obter uma lista de filmes populares', () async {
      when(() => mockMovieRepository.getPopularMovies())
          .thenAnswer((_) async => Right(tMovieList));

      final result = await usecase(NoParams());

      expect(result, Right(tMovieList));

      verify(() => mockMovieRepository.getPopularMovies()).called(1);

      verifyNoMoreInteractions(mockMovieRepository);
    });

    test('deve retornar uma falha (Failure) quando a chamada não tiver sucesso',
        () async {
      when(() => mockMovieRepository.getPopularMovies())
          .thenAnswer((_) async => Left(ServerFailure("Erro no servidor")));

      final result = await usecase(NoParams());

      expect(result, Left(ServerFailure("Erro no servidor")));

      verify(() => mockMovieRepository.getPopularMovies()).called(1);

      verifyNoMoreInteractions(mockMovieRepository);
    });
  });
}
