import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:netflix/api/api_constant.dart';
import 'package:netflix/api/tensedramas/tense_dramas/result.dart';
import 'package:netflix/api/tensedramas/tense_dramas/tense_dramas.dart';

Future<List<Result>> gettensedramasdata() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/now_playing?api_key=$apikey'));
  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    final tensedramasdata = TenseDramas.fromJson(data);
    return tensedramasdata.results!;
  }
  List<Result> newlist = [];
  return newlist;
}
