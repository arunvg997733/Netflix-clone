import 'package:flutter/material.dart';
import 'package:netflix/api/topmovies/topmovies.dart';
import 'package:netflix/core/constant.dart';
import 'package:netflix/presentation/home/widgets/number_card.dart';
import 'package:netflix/presentation/widgets/main_title.dart';

class NumberCardScrollView extends StatelessWidget {
  NumberCardScrollView({super.key, required this.text});

  String text;

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
              future: gettopmoviesdata(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else {
                  return ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return NumberCard(
                          index: index,
                          newlist: snapshot.data!,
                        );
                      },
                      separatorBuilder: (context, index) => kwidgt,
                      itemCount: 10);
                }
              },
            ))
      ],
    );
  }
}
