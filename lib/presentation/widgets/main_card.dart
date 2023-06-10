import 'package:flutter/material.dart';
import 'package:netflix/api/api_constant.dart';
import 'package:netflix/api/trendingmovies/trending_movies/result.dart';
import 'package:netflix/core/constant.dart';

class MainCard extends StatelessWidget {
  MainCard({super.key, required this.index, required this.newlist});

  int index;
  List<dynamic> newlist;

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return Container(
      width: screensize.width * .4,
      height: screensize.width * .6,
      decoration: BoxDecoration(
          borderRadius: kborderradius,
          image: DecorationImage(
              image: NetworkImage(baseurl + newlist[index].posterPath!),
              fit: BoxFit.cover)),
    );
  }
}
