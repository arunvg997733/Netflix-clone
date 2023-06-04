import 'package:flutter/material.dart';
import 'package:netflix/core/constant.dart';
import 'package:netflix/presentation/home/widgets/number_card.dart';
import 'package:netflix/presentation/widgets/main_title.dart';

class NumberCardScrollView extends StatelessWidget {
   NumberCardScrollView({
    super.key,
    required this.text
  });

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
          child: ListView.separated(
    scrollDirection: Axis.horizontal,
    itemBuilder: (context, index) {
      return NumberCard(index: index,);
    }, 
    separatorBuilder: (context, index) => kwidgt, 
    itemCount: 10)
        )

      ],
    );
  }
}