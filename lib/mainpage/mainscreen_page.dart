import 'package:flutter/material.dart';
import 'package:netflix_app/mainpage/bottom_bar.dart';
import 'package:netflix_app/presentation/downloads/downloads_page.dart';
import 'package:netflix_app/presentation/fastlaughs/fastlaughs_page.dart';
import 'package:netflix_app/presentation/home/home_page.dart';
import 'package:netflix_app/presentation/newsandhot/newsandhot_page.dart';
import 'package:netflix_app/presentation/search/search_page.dart';

class MainScreenPage extends StatelessWidget {
   const MainScreenPage({super.key});

  final pages = const [
    HomePage(),
    NewsandhotPage(),
    FastlaughsPage(),
    SearchPage(),
    DownloadsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(valueListenable: indexChange, builder: (context, int newvalue, child) {
          return pages[newvalue];
        },),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}