import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/core/constants.dart';
import 'package:netflix_app/presentation/search/title.dart';

const imageurl =
    'https://www.themoviedb.org/t/p/w250_and_h141_face/4HodYYKEIsGOdinkGi2Ucz6X9i0.jpg';

class SearchNullPage extends StatelessWidget {
  const SearchNullPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitle(title: 'Top Searches'),
        kheight,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (ctx, index) => SearchItemTile(),
              separatorBuilder: (ctx, index) => kheight,
              itemCount: 10),
        )
      ],
    );
  }
}

class SearchItemTile extends StatelessWidget {
  const SearchItemTile({super.key});
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.37,
          height: 90,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imageurl))),
        ),
        kwidth,
        const Expanded(
          child: Text(
            'Movie Name',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        const Icon(Icons.play_circle_fill_outlined,color: Colors.white,size: 40,)
      ],
    );
  }
}
