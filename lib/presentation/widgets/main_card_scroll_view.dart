import 'package:flutter/material.dart';
import 'package:netflix/api/trendingmovies/trending_movies/result.dart';
import 'package:netflix/core/constant.dart';
import 'package:netflix/presentation/widgets/main_card.dart';
import 'package:netflix/presentation/widgets/main_title.dart';

class MainCardScrollView extends StatelessWidget {
  MainCardScrollView({super.key, required this.text, required this.getdata});

  String text;
  Future<List<dynamic>> getdata;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(text: text),
        kheight,
        LimitedBox(
            maxHeight: 200,
            child: FutureBuilder(
              future: getdata,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                }
                // else if(snapshot.connectionState == ConnectionState.done){
                //   return Column(
                //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //     children: [
                //       Center(child: CircularProgressIndicator()),
                //       Text("Please check internet connection")
                //     ],
                //   );
                // }
                else {
                  return ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return MainCard(
                          index: index,
                          newlist: snapshot.data!,
                        );
                      },
                      separatorBuilder: (context, index) => kwidgt,
                      itemCount: 20);
                }
              },
            ))
      ],
    );
  }
}
