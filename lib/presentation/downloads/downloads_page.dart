import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/core/constants.dart';
import 'package:netflix_app/presentation/widgets/appbarwidget.dart';

class DownloadsPage extends StatelessWidget {
  const DownloadsPage({super.key});

  final widgetList = const [
    kheight,
    SmartDownloads(),
    kheight,
    Section2(),
    Section3()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBarWidget(title: 'Downloads')),
        body: ListView.separated(
            itemBuilder: (ctx, index) => widgetList[index],
            separatorBuilder: (ctx, index) => const SizedBox(
                  height: 10,
                ),
            itemCount: widgetList.length));
  }
}

class Section2 extends StatelessWidget {
  const Section2({super.key});

  final image = const [
    'https://m.media-amazon.com/images/M/MV5BMTkyYjY5MTItNmU4NS00ZGMzLTljZGMtYjIxOTI5ZjZmZGMwXkEyXkFqcGdeQXVyMTUzMDA3Mjc2._V1._SY0.jpg',
    'https://m.media-amazon.com/images/M/MV5BMDJiNzUwYzEtNmQ2Yy00NWE4LWEwNzctM2M0MjE0OGUxZTA3XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1._SY0.jpg'
        'https://m.media-amazon.com/images/M/MV5BYzFlYzg4YmYtN2JiOC00Y2ZlLTllZGEtNzliZDIyYWQyMDVkXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1._SY0.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          'Introducing Downloads for You',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        kheight,
        const Text(
          "We'll download a personalized selection of \n movies and shows for you, so there's \n always something there to watch on your \n device.",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        kheight,
        Container(
          height: 500,
          width: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: size.width * 0.39,
                backgroundColor: Colors.grey.withOpacity(0.39),
              ),
              DownloadsImageWidget(
                image: image[0],
                margin: const EdgeInsets.only(left: 130, bottom: 50),
                angle: 20,
                size: Size(size.width * 0.4, size.width * 0.58),
                radius: 10,
              ),
              DownloadsImageWidget(
                image: image[0],
                margin: const EdgeInsets.only(right: 130, bottom: 50),
                angle: -20,
                size: Size(size.width * 0.4, size.width * 0.58),
                radius: 10,
              ),
              DownloadsImageWidget(
                image: image[0],
                margin: const EdgeInsets.only(bottom: 10),
                size: Size(size.width * 0.45, size.width * 0.65),
                radius: 8,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            color: Colors.blue,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            onPressed: () {},
            child: const Text(
              'Setup',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        MaterialButton(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          onPressed: () {},
          child: const Text(
            'See what you can download',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

class SmartDownloads extends StatelessWidget {
  const SmartDownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        kwidth,
        Icon(
          Icons.settings,
          color: Colors.white,
        ),
        kwidth,
        Text('Smart Downloads'),
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    super.key,
    required this.image,
    this.angle = 0,
    required this.margin,
    required this.size,
    required this.radius,
  });

  final String image;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            image:
                DecorationImage(fit: BoxFit.cover, image: NetworkImage(image))),
      ),
    );
  }
}
