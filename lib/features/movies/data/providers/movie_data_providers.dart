import 'package:dio/dio.dart';
import 'package:filmes_flutter_riverpod/core/network/dio_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/repositories/movie_repository.dart';
import '../datasource/movie_remote_data_source.dart';
import '../repositories/movie_repository_impl.dart';

part 'movie_data_providers.g.dart';

@Riverpod(keepAlive: true)
Dio dio(Ref ref) {
  return createDio();
}

@Riverpod(keepAlive: true)
MovieRemoteDataSource movieRemoteDataSource(Ref ref) {
  return MovieRemoteDataSource(ref.watch(dioProvider));
}

@Riverpod(keepAlive: true)
MovieRepository movieRepository(Ref ref) {
  return MovieRepositoryImpl(
    remoteDataSource: ref.watch(movieRemoteDataSourceProvider),
  );
}
