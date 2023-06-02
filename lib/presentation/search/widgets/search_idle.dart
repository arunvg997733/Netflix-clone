import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constant.dart';
import 'package:netflix/presentation/search/widgets/title.dart';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         SearchTextTitle(text: 'Top Searches'),
         kheight,
         Expanded(
           child: ListView.separated(
            itemBuilder: (context, index) {
             return TopSearchItemTile();
           }, 
           separatorBuilder: (context, index) {
             return kheight;
           }, 
           itemCount: 30),
         ),
      ],
    );
  }
}


class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          width: screensize.width*.35,
          height: screensize.width*.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(image: AssetImage('assets/download image 1.jpg'),fit:BoxFit.cover)
          ),
        ),
        kwidgt,
        Expanded(child: Text('Movie name',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
        Icon(Icons.play_circle_outline,color: kwhite,size: 50,)
      ],
    );
  }
}