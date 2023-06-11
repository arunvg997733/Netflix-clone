import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'search_movies.g.dart';

@JsonSerializable()
class SearchMovies {
	int? page;
	List<Result>? results;
	@JsonKey(name: 'total_pages') 
	int? totalPages;
	@JsonKey(name: 'total_results') 
	int? totalResults;

	SearchMovies({
		this.page, 
		this.results, 
		this.totalPages, 
		this.totalResults, 
	});

	factory SearchMovies.fromJson(Map<String, dynamic> json) {
		return _$SearchMoviesFromJson(json);
	}

	Map<String, dynamic> toJson() => _$SearchMoviesToJson(this);
}
