import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/core/constants.dart';
import 'package:netflix_app/presentation/search/title.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey.withOpacity(0.4),
              border: InputBorder.none,
              prefixIcon: const Icon(Icons.search,color: Colors.grey,),
              suffixIcon: const Icon(Icons.cancel,color: Colors.grey,)
            ),
            style: const TextStyle(color: Colors.white),
          ),
          kheight,
          kwidth,
          const SearchTitle(title: 'Top Searches',)
        ],
      )),
    );
  }
}