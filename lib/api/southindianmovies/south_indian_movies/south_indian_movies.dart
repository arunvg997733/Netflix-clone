import 'package:json_annotation/json_annotation.dart';

import 'dates.dart';
import 'result.dart';

part 'south_indian_movies.g.dart';

@JsonSerializable()
class SouthIndianMovies {
  Dates? dates;
  int? page;
  List<Result>? results;
  @JsonKey(name: 'total_pages')
  int? totalPages;
  @JsonKey(name: 'total_results')
  int? totalResults;

  SouthIndianMovies({
    this.dates,
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  factory SouthIndianMovies.fromJson(Map<String, dynamic> json) {
    return _$SouthIndianMoviesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SouthIndianMoviesToJson(this);
}
