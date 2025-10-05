import 'package:filmes_flutter_riverpod/features/movies/data/models/movie_list_response.dart';
import 'package:filmes_flutter_riverpod/features/movies/data/models/movie_model.dart';
import 'package:filmes_flutter_riverpod/features/movies/domain/entities/movie.dart';
import 'package:filmes_flutter_riverpod/features/movies/domain/usecases/get_movie_details.dart';
import 'package:filmes_flutter_riverpod/features/movies/domain/usecases/search_movies.dart';

const tMovieId = 1;
final tMovie = Movie(
    id: 1,
    title: "Teste Filme",
    overview: "Teste descrição",
    posterPath: "/test.jpg",
    voteAverage: 4.3,
    releaseYear: "2025");
final tParams = MovieDetailsParams(movieId: tMovieId);
final tSearchParams = SearchMoviesParams("Teste Filme");

final tMovieList = [tMovie];

final tMovieModel = MovieModel(
  id: 1,
  title: "Teste Filme",
  overview: "Teste descrição",
  posterPath: "/test.jpg",
  voteAverage: 4.3,
  releaseDate: "2025-08-01",
);

final tMovieModelList = [tMovieModel];
final tMovieResponseModel = MovieListResponse(results: tMovieModelList);

final tMovieEntity = tMovieModel.toEntity();
final tMovieListEntity =
    tMovieModelList.map((model) => model.toEntity()).toList();
