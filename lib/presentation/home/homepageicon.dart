import 'package:flutter/material.dart';

class HomePageIcon extends StatelessWidget {
  final IconData icon;
  final String title;
  final double iconSize;
  final double textSize;
  const HomePageIcon({
    super.key,
    required this.icon,
    required this.title,
    this.iconSize = 30,
    this.textSize = 15,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: iconSize,
        ),
        Text(
          title,
          style: TextStyle(fontSize: textSize, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}