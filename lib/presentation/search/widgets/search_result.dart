import 'package:flutter/material.dart';
import 'package:netflix/api/api_constant.dart';
import 'package:netflix/api/releasedmovies/releasedmovies.dart';
import 'package:netflix/api/trendingmovies/trendingmoivies.dart';
import 'package:netflix/core/constant.dart';
import 'package:netflix/presentation/search/widgets/title.dart';
import 'package:netflix/presentation/widgets/main_card.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextTitle(text: 'Movies & TV'),
        kheight,
        Expanded(
          child: GridView.count(
              mainAxisSpacing: 7,
              crossAxisSpacing: 7,
              shrinkWrap: true,
              childAspectRatio: 1 / 1.4,
              crossAxisCount: 3,
              children: List.generate(20, (index) {
                return MainCardSearch(index: index,);
              })),
        )
      ],
    );
  }
}

class MainCardSearch extends StatelessWidget {
   MainCardSearch({super.key,
  required this.index});

  int index;


  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getreleasedmoviesdata(),
      builder: (context, snapshot) {
      if(snapshot.connectionState == ConnectionState.waiting){
        return Center(child: CircularProgressIndicator());
      }else{
        return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
              image: NetworkImage(baseurl+snapshot.data![index].posterPath!),
              fit: BoxFit.cover)),
    );
      }
    },);
  }
}
