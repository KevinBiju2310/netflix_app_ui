import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/fastlaughs/videoListItem.dart';

class FastlaughsPage extends StatelessWidget {
  const FastlaughsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: PageView(
      scrollDirection: Axis.vertical,
      children: List.generate(
          10,
          (index) => VideoListItem(
                index: index,
              )),
    )));
  }
}
