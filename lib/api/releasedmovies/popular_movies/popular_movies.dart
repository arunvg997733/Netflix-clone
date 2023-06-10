import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'popular_movies.g.dart';

@JsonSerializable()
class PopularMovies {
  int? page;
  List<Result>? results;
  @JsonKey(name: 'total_pages')
  int? totalPages;
  @JsonKey(name: 'total_results')
  int? totalResults;

  PopularMovies({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  factory PopularMovies.fromJson(Map<String, dynamic> json) {
    return _$PopularMoviesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PopularMoviesToJson(this);
}
