import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/core/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key,required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kwidth,
        Text(title,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 35),),
        const Spacer(),
        const Icon(Icons.cast,color: Colors.white,),
        kwidth,
        Container(
          color: Colors.blue,
          height: 20,
          width: 20,
        ),
        kwidth,
      ],
    );
  }
}