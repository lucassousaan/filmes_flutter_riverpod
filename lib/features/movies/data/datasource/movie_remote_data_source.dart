import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/movie_list_response.dart';

part 'movie_remote_data_source.g.dart';

@RestApi()
abstract class MovieRemoteDataSource {
  factory MovieRemoteDataSource(Dio dio, {String baseUrl}) =
      _MovieRemoteDataSource;

  @GET('/movie/popular')
  Future<MovieListResponse> getPopularMovies();
}
