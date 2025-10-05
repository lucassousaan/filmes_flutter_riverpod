import 'package:dartz/dartz.dart';
import 'package:filmes_flutter_riverpod/core/errors/failures.dart';
import 'package:filmes_flutter_riverpod/features/movies/domain/repositories/movie_repository.dart';
import 'package:filmes_flutter_riverpod/features/movies/domain/usecases/search_movies.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../helpers/test_models.dart';

class MockMovieRepository extends Mock implements MovieRepository {}

void main() {
  late SearchMovies usecase;
  late MockMovieRepository mockMovieRepository;

  setUp(() {
    mockMovieRepository = MockMovieRepository();
    usecase = SearchMovies(mockMovieRepository);
  });

  group("SearchMovies", () {
    test('deve obter uma lista de filmes de acordo com a busca', () async {
      when(() => mockMovieRepository.searchMovies("Teste Filme"))
          .thenAnswer((_) async => Right(tMovieList));

      final result = await usecase(tSearchParams);

      expect(result, Right(tMovieList));

      verify(() => mockMovieRepository.searchMovies("Teste Filme")).called(1);

      verifyNoMoreInteractions(mockMovieRepository);
    });

    test('deve retornar uma falha (Failure) quando a chamada não tiver sucesso',
        () async {
      when(() => mockMovieRepository.searchMovies("Teste Filme"))
          .thenAnswer((_) async => Left(ServerFailure("Erro no servidor")));

      final result = await usecase(tSearchParams);

      expect(result, Left(ServerFailure("Erro no servidor")));

      verify(() => mockMovieRepository.searchMovies("Teste Filme")).called(1);

      verifyNoMoreInteractions(mockMovieRepository);
    });
  });
}
