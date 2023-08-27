import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/core/constants.dart';

class NumberCard extends StatelessWidget {
  final int index;
  const NumberCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              height: 20,
              width: 50,
            ),
            Container(
              height: 250,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: border20,
                  image: const DecorationImage(
                      image: NetworkImage(
                          "https://www.themoviedb.org/t/p/w220_and_h330_face/qW4crfED8mpNDadSmMdi7ZDzhXF.jpg"))),
            ),
          ],
        ),
        Positioned(
            left: 9,
            top: 30,
            child: BorderedText(
              strokeWidth: 10,
              strokeColor: Colors.white,
              strokeJoin: StrokeJoin.round,
              strokeCap: StrokeCap.square,
              child: Text(
                "${index + 1}",
                style: const TextStyle(
                    fontSize: 150,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ))
      ],
    );
  }
}
