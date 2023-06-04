import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constant.dart';
import 'package:netflix/presentation/home/custom_button.dart';
import 'package:netflix/presentation/widgets/video_widget.dart';

class EveryonesWatching extends StatelessWidget {
  const EveryonesWatching({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Friends',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                kheight,
        Text('Landing the lead in the school musical is a dream come true for Jodi,until the pressure sends he confidence - and her relationship - into a tailspin.',
                style: TextStyle(fontSize: 12,color:kgrey1),),
        kheight50,
        VideoWidget(),
        kheight20,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(icon: Icons.share, text: 'Share',size: 10,),
            kwidgt,
            CustomButton(icon: Icons.add, text: 'My List',size: 10,),
            kwidgt,
            CustomButton(icon: Icons.play_arrow, text: 'Play',size: 10,),
            kwidgt
          ],
        )
      ],
    );
  }
}