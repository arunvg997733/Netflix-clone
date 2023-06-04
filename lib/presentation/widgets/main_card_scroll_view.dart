import 'package:flutter/material.dart';
import 'package:netflix/core/constant.dart';
import 'package:netflix/presentation/widgets/main_card.dart';
import 'package:netflix/presentation/widgets/main_title.dart';

class MainCardScrollView extends StatelessWidget {
   MainCardScrollView({
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
              return MainCard();
            }, 
            separatorBuilder: (context, index) => kwidgt, 
            itemCount: 20)
        )

      ],
    );
  }
}