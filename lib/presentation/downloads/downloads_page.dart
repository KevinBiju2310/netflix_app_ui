import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/application/bloc/downloads_bloc.dart';
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

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<DownloadsBloc>(context)
          .add(const DownloadsEvent.getDownloadsImages());
    });
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
        BlocBuilder<DownloadsBloc, DownloadsState>(
          builder: (context, state) {
            if (state.downloads != null && state.downloads!.isNotEmpty) {
              // Check if the list is not empty
              return SizedBox(
                height: 500,
                width: size.width,
                child: state.isLoading
                    ? const Center(
                        child: CircularProgressIndicator(
                        color: Colors.blue,
                      ))
                    : Stack(
                        alignment: Alignment.center,
                        children: [
                          CircleAvatar(
                            radius: size.width * 0.39,
                            backgroundColor: Colors.grey.withOpacity(0.39),
                          ),
                          DownloadsImageWidget(
                            image:
                                '$imageAppendUrl${state.downloads![0].posterPath}', // Use index 0
                            margin:
                                const EdgeInsets.only(left: 175, bottom: 50),
                            angle: 20,
                            size: Size(size.width * 0.4, size.width * 0.58),
                            radius: 10,
                          ),
                          DownloadsImageWidget(
                            image:
                                '$imageAppendUrl${state.downloads![1].posterPath}', // Use index 1
                            margin:
                                const EdgeInsets.only(right: 175, bottom: 50),
                            angle: -20,
                            size: Size(size.width * 0.4, size.width * 0.58),
                            radius: 10,
                          ),
                          DownloadsImageWidget(
                            image:
                                '$imageAppendUrl${state.downloads![2].posterPath}', // Use index 2
                            margin: const EdgeInsets.only(bottom: 10),
                            size: Size(size.width * 0.45, size.width * 0.65),
                            radius: 8,
                          ),
                        ],
                      ),
              );
            } else {
              // Handle the case when the list is empty or null
              // You might want to display a placeholder or an empty state
              return Container(); // Empty container as a placeholder
            }
          },
        )
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
