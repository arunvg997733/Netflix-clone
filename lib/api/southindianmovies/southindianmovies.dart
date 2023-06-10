import 'dart:convert';

import 'package:http/http.dart';
import 'package:netflix/api/api_constant.dart';
import 'package:netflix/api/southindianmovies/south_indian_movies/result.dart';
import 'package:netflix/api/southindianmovies/south_indian_movies/south_indian_movies.dart';

Future <List<Result>> getsouthindianmoviesdata()async{
final response = await get(Uri.parse('https://api.themoviedb.org/3/movie/upcoming?api_key=$apikey'));
if(response.statusCode == 200){
  final data = jsonDecode(response.body);
  final southindianmoviesdata = SouthIndianMovies.fromJson(data);
  return southindianmoviesdata.results!;
}
List<Result> newlist =[];
return newlist;

}