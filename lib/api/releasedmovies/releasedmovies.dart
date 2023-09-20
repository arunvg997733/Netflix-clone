import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:netflix/api/api_constant.dart';
import 'package:netflix/api/releasedmovies/popular_movies/popular_movies.dart';
import 'package:netflix/api/releasedmovies/popular_movies/result.dart';
import 'package:netflix/api/trendingmovies/trending_movies/trending_movies.dart';

Future<List<Result>> getreleasedmoviesdata() async {
  final response = await http.get(
      Uri.parse('https://api.themoviedb.org/3/movie/popular?api_key=$apikey'));
  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    final popularmoviesdata = PopularMovies.fromJson(data);
    return popularmoviesdata.results!;
  }
  List<Result> newlist = [];
  return newlist;
}


// Future <void> senddata()async{
//   http.put(Uri.parse('https://api.themoviedb.org/3/movie/popular?api_key=$apikey'),body: j)
// }

 