import 'package:flutter/material.dart';
import 'package:netflix/core/constant.dart';

class VideoListItem extends StatelessWidget {
   VideoListItem({super.key,required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.black.withOpacity(.5),
                  child: IconButton(onPressed: () {
                    
                  }, icon: Icon(Icons.volume_off_outlined)),
                ),
                
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/download image 1.jpg'),
                      ),
                    ),
                    VideoActionWidget(icon: Icons.emoji_emotions, title: 'LOL'),
                    VideoActionWidget(icon: Icons.add, title: 'My List'),
                    VideoActionWidget(icon: Icons.share, title: 'Share'),
                    VideoActionWidget(icon: Icons.play_arrow, title: 'Play')
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActionWidget extends StatelessWidget {
   VideoActionWidget({super.key,required this.icon,required this.title});

   final String title;
   final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10 ),
      child: Column(
        children: [
        
          Icon(icon,color: Colors.white,size: 30,),
          Text(title,style: TextStyle(fontSize: 10),),
         
        ],
    
      ),
    );
  }
}