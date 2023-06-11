import 'package:flutter/material.dart';
import 'package:netflix/core/constant.dart';

class AppBarWidget extends StatelessWidget {
  AppBarWidget({super.key, required this.title});

  String title;

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return Row(
      children: [
        kwidgt,
        Text(
          title,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.cast,
              color: Colors.white,
              size: 30,
            )),
        kwidgt,
        Container(
          width: screensize.width * .1,
          height: screensize.width * .1,
          decoration:const  BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/user emoji.jpg'))
            ),
        ),
        kwidgt
      ],
    );
  }
}
