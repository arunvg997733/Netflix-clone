import 'package:flutter/material.dart';
import 'package:netflix/api/trendingmovies/trendingmoivies.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constant.dart';
import 'package:netflix/presentation/home/custom_button.dart';
import 'package:netflix/presentation/widgets/video_widget.dart';



class ComingSoonWidget extends StatelessWidget {
   ComingSoonWidget({
    super.key,
    required this.index
  });
  int index;
  

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return FutureBuilder(
      future:gettrendingmoviesdata() ,
      builder: (context, snapshot) {
        String? date = snapshot.data![index].releaseDate;
      if(snapshot.connectionState == ConnectionState.waiting){
        return SizedBox(
          height: 420,
          child: Center(child: CircularProgressIndicator()));
      }else{
        return Row(
      children: [
        SizedBox(
          width: 55,
          height: 420,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'FEB',
                style: TextStyle(color: kgrey1),
              ),
              Text(
                date![8]+date[9],
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 5),
              )
            ],
          ),
        ),
        SizedBox(
          width: screensize.width - 55,
          height: 420,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoWidget(title: snapshot.data![index].backdropPath),
              kheight20,
              Row(
                children: [
                  Expanded(
                    child: Text(
                      snapshot.data![index].title!,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis),
                    ),
                  ),
                  
                  Row(
                    children: [
                      CustomButton(
                        icon: Icons.notifications_none,
                        text: 'Remind me',
                        size: 10,
                      ),
                      kwidgt,
                      CustomButton(
                        icon: Icons.info_outline,
                        text: 'Info',
                        size: 10,
                      ),
                      kwidgt
                    ],
                  )
                ],
              ),
              kheight,
              Text(
                'Coming on Friday',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              kheight,
              Text(
                snapshot.data![index].title!,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              kheight,
              Expanded(
                child: Text(
                  snapshot.data![index].overview!,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 6,
                  style: TextStyle(fontSize: 12, color: kgrey1),
                ),
              ),
              kheight
            ],
          ),
        ),
      ],
    );
    }
    },
    );
  }
}
