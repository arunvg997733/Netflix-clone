import 'package:flutter/material.dart';
import 'package:netflix/api/api_constant.dart';
import 'package:netflix/api/topmovies/topmovies.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constant.dart';
import 'package:netflix/presentation/search/widgets/title.dart';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextTitle(text: 'Top Searches'),
        kheight,
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return TopSearchItemTile(index: index,);
              },
              separatorBuilder: (context, index) {
                return kheight;
              },
              itemCount: 20),
        ),
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
   TopSearchItemTile({super.key,this.index});

  int? index;

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return FutureBuilder(
      future: gettopmoviesdata(),
      builder: (context, snapshot) {
      if(snapshot.connectionState == ConnectionState.waiting){
        return SizedBox(
          width: screensize.width * .35,
          height: screensize.width * .2,
          child: Center(child: CircularProgressIndicator()));
      }else{
        return Row(
      children: [
        Container(
          width: screensize.width * .35,
          height: screensize.width * .2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                  image: NetworkImage(baseurl+snapshot.data![index!].backdropPath!),
                  fit: BoxFit.cover)),
        ),
        kwidgt,
        Expanded(
            child: Text(
          snapshot.data![index!].title!,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        )),
        Icon(
          Icons.play_circle_outline,
          color: kwhite,
          size: 50,
        )
      ],
    );
      }
    },);
  }
}
