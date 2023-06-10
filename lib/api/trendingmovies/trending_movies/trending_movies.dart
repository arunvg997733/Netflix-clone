import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'trending_movies.g.dart';

@JsonSerializable()
class TrendingMovies {
  int? page;
  List<Result>? results;
  @JsonKey(name: 'total_pages')
  int? totalPages;
  @JsonKey(name: 'total_results')
  int? totalResults;

  TrendingMovies({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  factory TrendingMovies.fromJson(Map<String, dynamic> json) {
    return _$TrendingMoviesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TrendingMoviesToJson(this);
}
