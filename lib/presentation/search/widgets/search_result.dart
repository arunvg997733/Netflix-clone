import 'package:flutter/material.dart';
import 'package:netflix/core/constant.dart';
import 'package:netflix/presentation/search/widgets/title.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextTitle(text:'Movies & TV'),
        kheight,
        Expanded(
          child: GridView.count(
            mainAxisSpacing: 7,
            crossAxisSpacing: 7,
            shrinkWrap: true,
            childAspectRatio: 1/1.4,
            crossAxisCount: 3,
            children: List.generate(20, (index) {
              return MainCard();
            })
            ),
        )

      ],
    );
  }
}


class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(image: AssetImage('assets/download image 1.jpg'),fit: BoxFit.cover)
      ),
    );
  }
}