import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_app/presentation/core/constants.dart';
import 'package:netflix_app/presentation/home/backgroundcard.dart';
import 'package:netflix_app/presentation/home/numbertitlecard.dart';
import 'package:netflix_app/presentation/widgets/maintitlecard.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(false);

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
            valueListenable: scrollNotifier,
            builder: (BuildContext context, index, _) {
              return NotificationListener<UserScrollNotification>(
                onNotification: (notification) {
                  final ScrollDirection direction = notification.direction;
                  print(direction);
                  if (direction == ScrollDirection.reverse) {
                    scrollNotifier.value = false;
                  } else if (direction == ScrollDirection.forward) {
                    scrollNotifier.value = true;
                  }
                  return true;
                },
                child: Stack(
                  children: [
                    ListView(
                      children: const [
                        BackgroundCard(),
                        MainTitleCard(
                          title: "Released in Past Year",
                        ),
                        MainTitleCard(
                          title: "Trending Now",
                        ),
                        NumberTitleCard(),
                        MainTitleCard(title: "Tense Dramas"),
                        MainTitleCard(title: "South Indian Cinema")
                      ],
                    ),
                    scrollNotifier.value == true
                        ? Container(
                            width: double.infinity,
                            height: 90,
                            color: Colors.black.withOpacity(0.4),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Image.network(
                                      'https://cdn-images-1.medium.com/max/1200/1*ty4NvNrGg4ReETxqU2N3Og.png',
                                      height: 60,
                                      width: 60,
                                    ),
                                    const Spacer(),
                                    const Icon(
                                      Icons.cast,
                                      color: Colors.white,
                                    ),
                                    kwidth,
                                    Container(
                                      color: Colors.blue,
                                      height: 20,
                                      width: 20,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'TV Shows',
                                      style: kHometitle,
                                    ),
                                    Text(
                                      'Movies',
                                      style: kHometitle,
                                    ),
                                    Text(
                                      'Categories',
                                      style: kHometitle,
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        : kheight,
                  ],
                ),
              );
            }));
  }
}
