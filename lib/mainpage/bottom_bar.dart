import 'package:flutter/material.dart';

ValueNotifier<int> indexChange = ValueNotifier(0);

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: indexChange, builder: (context, int newvalue, child) {
      return
      BottomNavigationBar(
      currentIndex: newvalue,
      onTap: (index) {
        indexChange.value = index;
      },
      backgroundColor: Colors.black,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      items: const [
      BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.perm_media),label: 'News & Hot'),
      BottomNavigationBarItem(icon: Icon(Icons.mood),label: 'Fast Laughs'),
      BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
      BottomNavigationBarItem(icon: Icon(Icons.download),label: 'Downloads'),
      
    ]);
    },);
  }
}