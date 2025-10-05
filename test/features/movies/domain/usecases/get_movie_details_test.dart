import 'package:dartz/dartz.dart';
import 'package:filmes_flutter_riverpod/core/errors/failures.dart';
import 'package:filmes_flutter_riverpod/features/movies/domain/repositories/movie_repository.dart';
import 'package:filmes_flutter_riverpod/features/movies/domain/usecases/get_movie_details.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../helpers/test_models.dart';

class MockMovieRepository extends Mock implements MovieRepository {}

void main() {
  late GetMovieDetails usecase;
  late MockMovieRepository mockMovieRepository;

  setUp(() {
    mockMovieRepository = MockMovieRepository();
    usecase = GetMovieDetails(mockMovieRepository);
  });

  group("GetMovieDetails", () {
    test('deve obter os detalhes do filme', () async {
      when(() => mockMovieRepository.getMovieDetails(tMovieId))
          .thenAnswer((_) async => Right(tMovie));

      final result = await usecase(tParams);

      expect(result, Right(tMovie));

      verify(() => mockMovieRepository.getMovieDetails(tMovieId)).called(1);

      verifyNoMoreInteractions(mockMovieRepository);
    });

    test('deve retornar uma falha (Failure) quando a chamada não tiver sucesso',
        () async {
      when(() => mockMovieRepository.getMovieDetails(tMovieId))
          .thenAnswer((_) async => Left(ServerFailure("Erro no servidor")));

      final result = await usecase(tParams);

      expect(result, Left(ServerFailure("Erro no servidor")));

      verify(() => mockMovieRepository.getMovieDetails(tMovieId)).called(1);

      verifyNoMoreInteractions(mockMovieRepository);
    });
  });
}
