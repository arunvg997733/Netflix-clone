import 'package:flutter/material.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 180,
          width: double.infinity,
          child: Image.asset('assets/download image 1.jpg',fit: BoxFit.cover),
        ),
      Positioned(
        bottom: 10,
        right: 10,
        child: CircleAvatar(
        radius: 20,
        backgroundColor: Colors.black.withOpacity(.5),
        child: IconButton(onPressed: () {
          
        }, icon: Icon(Icons.volume_off_outlined)),
                      ),
      ),
        
      ],
    );
  }
}