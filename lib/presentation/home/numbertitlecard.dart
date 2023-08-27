import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/core/constants.dart';
import 'package:netflix_app/presentation/home/number_card.dart';
import 'package:netflix_app/presentation/widgets/maintitle.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainTitlePage(title: "Top 10 trending Tv shows"),
        kheight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
                10,
                (index) => NumberCard(
                      index: index,
                    )),
          ),
        )
      ],
    );
  }
}
