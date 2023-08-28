import 'package:flutter/material.dart';

import '../core/constants.dart';
import '../home/homepageicon.dart';
import '../widgets/videowidget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        const SizedBox(
          width: 50,
          height: 460,
          child: Column(
            children: [
              Text(
                'FEB',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              Text(
                '11',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3),
              )
            ],
          ),
        ),
        SizedBox(
          height: 450,
          width: size.width - 55,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoWidget(),
              Row(
                children: [
                  Text(
                    'Tall Girl 2',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  HomePageIcon(icon: Icons.notifications, title: 'Remind me'),
                  kwidth,
                  HomePageIcon(icon: Icons.info, title: 'info'),
                  kwidth,
                ],
              ),
              Text('Coming on Friday'),
              kheight,
              Text(
                'Tall Girl 2',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              kheight,
              Text(
                'Landing the dream in the musical is a dream come true for Jodi, until the pressure sends her confidence - and her relationships - into a tallspain',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
      ],
    );
  }
}

