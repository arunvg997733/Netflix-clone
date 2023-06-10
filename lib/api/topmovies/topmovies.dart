import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:netflix/api/api_constant.dart';
import 'package:netflix/api/topmovies/top_movies/result.dart';
import 'package:netflix/api/topmovies/top_movies/top_movies.dart';

Future<List<Result>> gettopmoviesdata() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/top_rated?api_key=$apikey'));
  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    final topmoviesdata = TopMovies.fromJson(data);
    return topmoviesdata.results!;
  }
  List<Result> newlist = [];

  return newlist;
}
