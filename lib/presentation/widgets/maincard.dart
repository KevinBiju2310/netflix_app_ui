import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/core/constants.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: border20,
        image: const DecorationImage(image: NetworkImage("https://www.themoviedb.org/t/p/w220_and_h330_face/rktDFPbfHfUbArZ6OOOKsXcv0Bm.jpg"))
      ),
    );
  }
}