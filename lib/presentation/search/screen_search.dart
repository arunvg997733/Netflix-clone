import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/api/searchmovies/search_movies/result.dart';
import 'package:netflix/api/searchmovies/searchmovies.dart';
import 'package:netflix/core/constant.dart';
import 'package:netflix/presentation/search/widgets/search_idle.dart';
import 'package:netflix/presentation/search/widgets/search_result.dart';

ValueNotifier <List<Result>> searchlistnotifier = ValueNotifier([]);

class ScreenSearch extends StatelessWidget {
   ScreenSearch({super.key});

  final textctr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CupertinoSearchTextField(
            controller: textctr,
            onChanged: (value) {
              searchmoviesdata(value);
            },
            prefixIcon: const Icon(
              CupertinoIcons.search,
              color: Colors.grey,
            ),
            suffixIcon: const Icon(
              CupertinoIcons.xmark_circle_fill,
              color: Colors.grey,
            ),
            style: const TextStyle(color: Colors.white),
            backgroundColor: Colors.grey.withOpacity(0.4),
          ),
          kheight,
          ValueListenableBuilder(valueListenable: searchlistnotifier, builder: (context, value, child) {
            return textctr.text.isEmpty ? Expanded(child: SearchIdleWidget()):Expanded(child: searchlistnotifier.value.isEmpty? Center(child: Text('No Results Found')) : SearchResultWidget());
          },)
          
          
        ],
      ),
    )));
  }
}
