import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:filmes_flutter_riverpod/core/errors/failures.dart';
import 'package:filmes_flutter_riverpod/features/movies/data/datasource/movie_remote_data_source.dart';
import 'package:filmes_flutter_riverpod/features/movies/data/repositories/movie_repository_impl.dart';
import 'package:filmes_flutter_riverpod/features/movies/domain/entities/movie.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../helpers/test_models.dart';

class MockMovieRemoteDataSource extends Mock implements MovieRemoteDataSource {}

void main() {
  late MovieRepositoryImpl repository;
  late MockMovieRemoteDataSource mockRemoteDataSource;

  setUp(() {
    mockRemoteDataSource = MockMovieRemoteDataSource();
    repository = MovieRepositoryImpl(remoteDataSource: mockRemoteDataSource);
  });

  group("getPopularMovies", () {
    test(
        "deve retornar uma lista de filmes quando a chamada ao data source for bem sucedida",
        () async {
      when(() => mockRemoteDataSource.getPopularMovies())
          .thenAnswer((_) async => tMovieResponseModel);

      final result = await repository.getPopularMovies();

      verify(() => mockRemoteDataSource.getPopularMovies()).called(1);

      expect(result.getOrElse(() => []), equals(tMovieListEntity));
      expect(result, isA<Right<Failure, List<Movie>>>());
    });

    test(
      'deve retornar um ServerFailure quando a chamada ao data source lançar uma DioException',
      () async {
        when(() => mockRemoteDataSource.getPopularMovies())
            .thenThrow(DioException(requestOptions: RequestOptions(path: '')));

        final result = await repository.getPopularMovies();

        verify(() => mockRemoteDataSource.getPopularMovies());
        expect(result, isA<Left<Failure, List<Movie>>>());
        result.fold(
          (failure) => expect(failure, isA<ServerFailure>()),
          (_) => fail('O teste deveria ter retornado uma falha'),
        );
      },
    );

    test(
      'deve retornar um GeneralFailure para outros tipos de exceção',
      () async {
        when(() => mockRemoteDataSource.getPopularMovies())
            .thenThrow(Exception('Erro genérico'));

        final result = await repository.getPopularMovies();

        verify(() => mockRemoteDataSource.getPopularMovies());
        expect(result, isA<Left<Failure, List<Movie>>>());
        result.fold(
          (failure) => expect(failure, isA<GeneralFailure>()),
          (_) => fail('O teste deveria ter retornado uma falha'),
        );
      },
    );
  });
}
