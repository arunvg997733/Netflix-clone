import 'package:flutter/material.dart';
import 'package:netflix/core/constant.dart';

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return  Container(
      width: screensize.width*.4,
      height: screensize.width*.6,
      decoration: BoxDecoration(
        borderRadius: kborderradius,
        image: DecorationImage(image: AssetImage('assets/download image 1.jpg'),fit: BoxFit.cover)
      ),

    );
  }
}