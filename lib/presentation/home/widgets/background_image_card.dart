import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/home/custom_button.dart';

class BackgroundImageCard extends StatelessWidget {
  const BackgroundImageCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/download image 3.jpg'),fit: BoxFit.cover)
          ),         
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            decoration:  BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.transparent,Colors.black.withOpacity(.9),Colors.black],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButton(icon: Icons.add,text: "My List",size: 12,),
                  _PlayButton(),
                  CustomButton(icon: Icons.info_outline,text: "Info",size: 12,),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}



class _PlayButton extends StatelessWidget {
  const _PlayButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(kwhite),
        iconColor: MaterialStatePropertyAll(kblack),
        iconSize: MaterialStatePropertyAll(30)
        
      ),
      onPressed: () {
      
    }, icon: Icon(Icons.play_arrow), label: Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Text('Play',style: TextStyle(color: kblack,fontWeight: FontWeight.bold),),
    ));
  }
}