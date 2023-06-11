import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/api/releasedmovies/releasedmovies.dart';
import 'package:netflix/api/southindianmovies/southindianmovies.dart';
import 'package:netflix/api/tensedramas/tensedramas.dart';
import 'package:netflix/api/trendingmovies/trendingmoivies.dart';
import 'package:netflix/core/constant.dart';
import 'package:netflix/presentation/home/widgets/background_image_card.dart';
import 'package:netflix/presentation/home/widgets/number_card_scroll_view.dart';
import 'package:netflix/presentation/widgets/main_card_scroll_view.dart';

ValueNotifier<bool> showcontainernotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
            child: ValueListenableBuilder(
      valueListenable: showcontainernotifier,
      builder: (context, value, child) {
        return NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            final ScrollDirection direction = notification.direction;
            if (direction == ScrollDirection.reverse) {
              showcontainernotifier.value = false;
            } else if (direction == ScrollDirection.forward) {
              showcontainernotifier.value = true;
            }
            return true;
          },
          child: Stack(
            children: [
              ListView(
                children: [
                  BackgroundImageCard(),
                  kheight,
                  MainCardScrollView(
                    text: "Released in the past year",
                    getdata: getreleasedmoviesdata(),
                  ),
                  kheight,
                  MainCardScrollView(
                    text: "Trending Now",
                    getdata: gettrendingmoviesdata(),
                  ),
                  kheight,
                  NumberCardScrollView(
                    text: 'Top 10 TV Shows In India Today',
                  ),
                  kheight,
                  MainCardScrollView(
                    text: "Tense Dramas",
                    getdata: gettensedramasdata(),
                  ),
                  kheight,
                  MainCardScrollView(
                    text: "South Indian Cinema",
                    getdata: getsouthindianmoviesdata(),
                  ),
                ],
              ),
              value == true
                  ? AnimatedContainer(
                      duration: Duration(milliseconds: 1000),
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                        colors: [
                          Colors.black,
                          Colors.black.withOpacity(.9),
                          Colors.transparent
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      )),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/netflix logo.jpeg'),
                                      fit: BoxFit.cover),
                                ),
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
                          ),
                          kheight,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('TV Shows', style: ktextstyle),
                              Text('Movies', style: ktextstyle),
                              Text('Categories', style: ktextstyle),
                            ],
                          )
                        ],
                      ),
                    )
                  : kwidgt
            ],
          ),
        );
      },
    )));
  }
}
