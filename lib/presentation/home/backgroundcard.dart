import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/core/constants.dart';
import 'package:netflix_app/presentation/home/homepageicon.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imageurl1))),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 30,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            const HomePageIcon(
              icon: Icons.add,
              title: 'My List',
            ),
            _playButton(),
            const HomePageIcon(
              icon: Icons.info_outline_rounded,
              title: 'Info',
            ),
          ]),
        )
      ],
    );
  }

  TextButton _playButton() {
    return TextButton.icon(
      style:
          ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
      onPressed: () {},
      icon: const Icon(
        Icons.play_arrow,
        color: Colors.black,
        size: 30,
      ),
      label: const Text(
        'Play',
        style: TextStyle(color: Colors.black, fontSize: 20),
      ),
    );
  }
}
