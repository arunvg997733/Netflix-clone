import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constant.dart';
import 'package:netflix/presentation/home/custom_button.dart';
import 'package:netflix/presentation/widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return Row(
      children: [
         SizedBox(
          width: 50,
          height: 420,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('FEB',style: TextStyle(color: kgrey1),),
            Text('11',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,letterSpacing: 5),)
          ],
        ),),
        SizedBox(
          width: screensize.width - 50,
          height: 420,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoWidget(),
              kheight20,
              Row(
                children: [
                  Text('TALL GIRL 2',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Spacer(),
                  Row(
                    children: [
                      CustomButton(icon: Icons.notifications_none, text: 'Remind me',size: 10,),
                      kwidgt,
                      CustomButton(icon: Icons.info_outline, text: 'Info',size: 10,),
                      kwidgt
                    ],
                  )
                ],
              ),
              kheight,
              Text('Coming on Friday',style: TextStyle(fontWeight: FontWeight.bold,),),
              kheight,
              Text('Tall Girl 2',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              kheight,
              Text('Landing the lead in the school musical is a dream come true for Jodi,until the pressure sends he confidence - and her relationship - into a tailspin.',
              style: TextStyle(fontSize: 12,color:kgrey1),)
        
            ],
          ),
        ),
      ],
    );
  }
}



