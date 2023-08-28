import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/core/constants.dart';

import 'comingsoonwidget.dart';
import 'everyonewatchingwidget.dart';

class NewsandhotPage extends StatelessWidget {
  const NewsandhotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'New & Hot',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color: Colors.white),
            ),
            actions: [
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
              kwidth,
            ],
            bottom: TabBar(
                isScrollable: false,
                indicator: BoxDecoration(
                  color: Colors.white,
                  borderRadius: border30,
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: Colors.white,
                labelColor: Colors.black,
                dividerColor: Colors.black,
                tabs: const [
                  Tab(
                    text: '🍿 Coming Soon',
                  ),
                  Tab(
                    text: '👀 Everyone watching',
                  )
                ]),
          ),
          body: TabBarView(
              children: [buildComingSoon(), buildEveryoneWatching()])),
    );
  }

  buildComingSoon() {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, index) => const ComingSoonWidget());
  }

  buildEveryoneWatching() {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, index) => const EveryoneWatching());
  }
}

