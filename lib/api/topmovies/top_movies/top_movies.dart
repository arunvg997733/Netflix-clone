import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'top_movies.g.dart';

@JsonSerializable()
class TopMovies {
  int? page;
  List<Result>? results;
  @JsonKey(name: 'total_pages')
  int? totalPages;
  @JsonKey(name: 'total_results')
  int? totalResults;

  TopMovies({this.page, this.results, this.totalPages, this.totalResults});

  factory TopMovies.fromJson(Map<String, dynamic> json) {
    return _$TopMoviesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TopMoviesToJson(this);
}
