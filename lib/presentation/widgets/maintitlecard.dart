import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/core/constants.dart';
import 'package:netflix_app/presentation/widgets/maincard.dart';
import 'package:netflix_app/presentation/widgets/maintitle.dart';

class MainTitleCard extends StatelessWidget {
  final String title;
  const MainTitleCard({
    super.key,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitlePage(title: title),
        kheight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(10, (index) => const MainCard()),
          ),
        )
      ],
    );
  }
}

