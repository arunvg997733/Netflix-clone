import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:netflix/api/api_constant.dart';
import 'package:netflix/api/trendingmovies/trending_movies/result.dart';
import 'package:netflix/api/trendingmovies/trending_movies/trending_movies.dart';

Future<List<Result>> gettrendingmoviesdata() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/trending/movie/day?api_key=$apikey'));
  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    final trendingdata = TrendingMovies.fromJson(data);
    return trendingdata.results!;
  }
  List<Result> newlist = [];
  return newlist;
}
