// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_movies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrendingMovies _$TrendingMoviesFromJson(Map<String, dynamic> json) =>
    TrendingMovies(
      page: json['page'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'] as int?,
      totalResults: json['total_results'] as int?,
    );

Map<String, dynamic> _$TrendingMoviesToJson(TrendingMovies instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
