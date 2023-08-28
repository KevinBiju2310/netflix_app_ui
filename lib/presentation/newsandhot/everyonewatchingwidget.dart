import 'package:flutter/material.dart';

import '../core/constants.dart';
import '../home/homepageicon.dart';
import '../widgets/videowidget.dart';

class EveryoneWatching extends StatelessWidget {
  const EveryoneWatching({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        kheight,
        Text(
          'Friends',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        kheight,
        Text(
          'This hit sitcom follows the merry misadventures of six -20- something pals as they navigate the pitfalls of work, life and love in 1990s Manhattan',
          style: TextStyle(color: Colors.grey),
        ),
        kheight30,
        VideoWidget(),
        kheight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            HomePageIcon(icon: Icons.share, title: 'Share', iconSize: 30,textSize: 20,),
            kwidth20,
            HomePageIcon(icon: Icons.add, title: 'My List', iconSize: 30,textSize: 20,),
            kwidth20,
            HomePageIcon(icon: Icons.play_arrow, title: 'Play', iconSize: 30,textSize: 20,),
            kwidth,
          ],
        )
      ],
    );
  }
}
