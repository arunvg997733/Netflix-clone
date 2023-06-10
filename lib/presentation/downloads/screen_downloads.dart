import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix/api/api_constant.dart';
import 'package:netflix/api/trendingmovies/trendingmoivies.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constant.dart';
import 'package:netflix/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  List widgetslist = [const _SmartDownloads(), Section2(), const Section3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: AppBarWidget(title: "Downloads"),
        ),
        body: ListView.separated(
            padding: EdgeInsets.all(12),
            itemBuilder: (context, index) {
              return widgetslist[index];
            },
            separatorBuilder: (context, index) {
              return SizedBox(height: 35);
            },
            itemCount: widgetslist.length));
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});

  List imagelist = [
    'assets/download image 1.jpg',
    'assets/download image 2.jpg',
    'assets/download image 3.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          'Introducing downloads for you',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        kheight,
        Text(
          "We'll download a personalised selection of\n movies and shows for you, so there's\n always something to watch on your\n device",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey.withOpacity(0.5), fontSize: 10),
        ),
        SizedBox(
            width: screensize.width,
            height: screensize.width * .7,
            child: FutureBuilder(
              future: gettrendingmoviesdata(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else {
                  return Stack(
                    alignment: Alignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Kgrey,
                        radius: screensize.width * 0.28,
                      ),
                      DownloadsImageWidgets(
                        screensize: screensize,
                        image: baseurl + snapshot.data![1].posterPath!,
                        margin: const EdgeInsets.only(left: 130, bottom: 10),
                        rotate: 20,
                        height: 0.36,
                        width: 0.25,
                      ),
                      DownloadsImageWidgets(
                        screensize: screensize,
                        image: baseurl + snapshot.data![2].posterPath!,
                        margin: const EdgeInsets.only(right: 130, bottom: 10),
                        rotate: -20,
                        height: 0.36,
                        width: 0.25,
                      ),
                      DownloadsImageWidgets(
                        screensize: screensize,
                        image: baseurl + snapshot.data![0].posterPath!,
                        margin: const EdgeInsets.only(top: 15),
                        height: 0.43,
                        width: 0.3,
                      ),
                    ],
                  );
                }
              },
            )),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          width: screensize.width * 0.9,
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            color: buttoncolorblue,
            onPressed: () {},
            child: const Text(
              "Set up",
              style: TextStyle(
                  color: kwhite, fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        MaterialButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          color: buttoncolorwhite,
          onPressed: () {},
          child: const Text(
            "See What You Can Download",
            style: TextStyle(
                color: kblack, fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.settings,
          color: kwhite,
        ),
        kwidgt,
        Text("Smart downloads")
      ],
    );
  }
}

class DownloadsImageWidgets extends StatelessWidget {
  const DownloadsImageWidgets(
      {super.key,
      required this.screensize,
      required this.image,
      this.rotate = 0,
      required this.margin,
      required this.height,
      required this.width});

  final Size screensize;
  final String image;
  final double rotate;
  final EdgeInsets margin;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: rotate * pi / 180,
      child: Container(
        margin: margin,
        width: screensize.width * width,
        height: screensize.width * height,
        decoration: BoxDecoration(
            image:
                DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(5)),
      ),
    );
  }
}
