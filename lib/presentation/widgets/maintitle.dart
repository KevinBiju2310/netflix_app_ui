import 'package:flutter/material.dart';

class MainTitlePage extends StatelessWidget {
  final String title;
  const MainTitlePage({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Text(
          title,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
    );
  }
}