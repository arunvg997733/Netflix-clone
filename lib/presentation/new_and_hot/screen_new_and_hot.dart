import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constant.dart';
import 'package:netflix/presentation/home/custom_button.dart';
import 'package:netflix/presentation/new_and_hot/widgets/coming_soon.dart';
import 'package:netflix/presentation/new_and_hot/widgets/everyons_watching.dart';
import 'package:netflix/presentation/widgets/video_widget.dart';

class ScreenNewandHot extends StatelessWidget {
  const ScreenNewandHot({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize( preferredSize:const Size.fromHeight(90),child: AppBar(
          title: 
          const Text('New & Hot',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          actions: [
            IconButton(onPressed: () {
      
          }, icon: const Icon(Icons.cast,color: Colors.white,size: 30,)),
          kwidgt,
          Container(
            width: 30,
            height: 10,
            color: Colors.blue,
          ),
          kwidgt
    
          ],
          bottom: TabBar(
            indicator: BoxDecoration(
              color: kwhite,
              borderRadius: kborderradius30
            ),
            labelColor: kblack,
            isScrollable: true,
            unselectedLabelColor: kwhite,
            labelStyle: const TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
            tabs:const[
            Tab(text: '🍿 Coming Soon',),
            Tab(text: "👀 Everyone's Watching")
          ],
          ),
        ), ),
        body: TabBarView(
          children: [
            _build_ComingSoon(),
            _build_EveryonesWatching()
          ],
        ),
      ),
    );
  }
}

Widget _build_ComingSoon(){
  
  return ListView.builder(
    itemCount: 10,
    itemBuilder: (context, index) {
    return const ComingSoonWidget();
  },);
}

Widget _build_EveryonesWatching(){
  return ListView.builder(
    itemCount: 10,
    itemBuilder: (context, index) {
    return EveryonesWatching();
  },);
}



