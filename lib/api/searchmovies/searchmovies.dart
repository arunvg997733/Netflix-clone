import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:netflix/api/searchmovies/search_movies/search_movies.dart';
import 'package:netflix/presentation/search/screen_search.dart';

Future<void>searchmoviesdata(String search)async{
  final response = await http.get(Uri.parse('https://api.themoviedb.org/3/search/movie?api_key=b7d1c1cf780d9b76cafd47071df61529&query=${search}'));
  if(response.statusCode == 200){
    final data = jsonDecode(response.body);
    final searchmoviesdata = SearchMovies.fromJson(data);
    searchlistnotifier.value = searchmoviesdata.results!;
  }
}