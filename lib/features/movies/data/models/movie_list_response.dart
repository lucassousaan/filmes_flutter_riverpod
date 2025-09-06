import 'package:filmes_flutter_riverpod/features/movies/data/models/movie_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_list_response.g.dart';

@JsonSerializable()
class MovieListResponse {
  final List<MovieModel> results;

  MovieListResponse({required this.results});

  factory MovieListResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieListResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MovieListResponseToJson(this);
}
