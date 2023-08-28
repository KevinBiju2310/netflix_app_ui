import 'package:flutter/material.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: Image.network(
            "https://www.themoviedb.org/t/p/w355_and_h200_multi_faces/bGfbeZ52aqTvxde9pjyC62jaSUg.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.black26,
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.volume_up,
                    color: Colors.white,
                  ))),
        ),
      ],
    );
  }
}
