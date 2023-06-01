import 'package:flutter/material.dart';
import 'package:netflix/presentation/downloads/screen_downloads.dart';
import 'package:netflix/presentation/fast_laugh/screen_fast_laugh.dart';
import 'package:netflix/presentation/home/screen_home.dart';
import 'package:netflix/presentation/main_page/widgets/bottom_nav.dart';
import 'package:netflix/presentation/new_and_hot/screen_new_and_hot.dart';
import 'package:netflix/presentation/search/screen_search.dart';

class ScreenMainPage extends StatelessWidget {
   ScreenMainPage({super.key});

  List pages = [
    ScreenHome(),
    ScreenNewandHot(),
    ScreenFastLaugh(),
    ScreenSearch(),
    ScreenDownloads()
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: SafeArea(
        child: ValueListenableBuilder(valueListenable: currentindexnotifier, builder: (context, int index, child) {
          return pages[index];
        },),
      ),
       
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}