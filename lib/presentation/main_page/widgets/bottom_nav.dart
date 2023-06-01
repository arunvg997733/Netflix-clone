import 'package:flutter/material.dart';

ValueNotifier <int> currentindexnotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
   BottomNavigationWidget({super.key});
   
  

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: currentindexnotifier, builder: (context, int index, child) {
      return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
      onTap: (value) {
        currentindexnotifier.value = value;
      },
      currentIndex:index,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      selectedIconTheme: IconThemeData(
        color: Colors.white
      ),
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.collections),label: 'New & Hot'),
        BottomNavigationBarItem(icon: Icon(Icons.emoji_emotions),label: 'Fast Laughs'),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.download),label: 'Downloads')   
      ]
      );
    },);
  }
}