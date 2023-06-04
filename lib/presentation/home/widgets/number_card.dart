import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constant.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key,required this. index});

  final int index;

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              width: screensize.width*.15,
              height: screensize.width*.6,
            ),
            Container(
              width: screensize.width*.4,
              height: screensize.width*.6,
              decoration: BoxDecoration(
                borderRadius: kborderradius,
                image: DecorationImage(image: AssetImage('assets/download image 1.jpg'),fit: BoxFit.cover)
              ),

            ),
          ],
        ),
        Positioned(
          left: 2,
          bottom:-25,
          child: BorderedText(
            strokeWidth: 5,
            strokeColor: kwhite,
            child: Text('${index+1}',style: TextStyle(fontSize: 100,fontWeight: FontWeight.bold,color: kblack),)))
      ],
    );
  }
}