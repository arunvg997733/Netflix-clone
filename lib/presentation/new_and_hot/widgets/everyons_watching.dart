import 'package:flutter/material.dart';
import 'package:netflix/api/tensedramas/tensedramas.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constant.dart';
import 'package:netflix/presentation/home/custom_button.dart';
import 'package:netflix/presentation/widgets/video_widget.dart';

class EveryonesWatching extends StatelessWidget {
   EveryonesWatching({
    super.key,
    this.index
  });

  int? index;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: gettensedramasdata(),
      builder: (context, snapshot) {
      if(snapshot.connectionState == ConnectionState.waiting){
        return Center(child: CircularProgressIndicator());
      }else{
        return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          snapshot.data![index!].title!,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        kheight,
        Text(
          snapshot.data![index!].overview!,
          maxLines: 5,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 12, color: kgrey1),
        ),
        kheight50,
        VideoWidget(title: snapshot.data![index!].backdropPath),
        kheight20,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              icon: Icons.share,
              text: 'Share',
              size: 10,
            ),
            kwidgt,
            CustomButton(
              icon: Icons.add,
              text: 'My List',
              size: 10,
            ),
            kwidgt,
            CustomButton(
              icon: Icons.play_arrow,
              text: 'Play',
              size: 10,
            ),
            kwidgt
          ],
        ),
        kheight
      ],
    );
      }
    },);
  }
}
