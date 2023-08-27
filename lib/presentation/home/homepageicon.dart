import 'package:flutter/material.dart';

class HomePageIcon extends StatelessWidget {
  final IconData icon;
  final String title;
  const HomePageIcon({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 20,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}