import 'package:flutter/material.dart';

const imageurl = "https://m.media-amazon.com/images/M/MV5BMTkyYjY5MTItNmU4NS00ZGMzLTljZGMtYjIxOTI5ZjZmZGMwXkEyXkFqcGdeQXVyMTUzMDA3Mjc2._V1._SY0.jpg";

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.black26,
                    child: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.volume_off))),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(imageurl),
                    ),
                    VideoAction(icon: Icons.emoji_emotions, title: 'LOL'),
                    VideoAction(icon: Icons.add, title: 'My List'),
                    VideoAction(icon: Icons.share, title: 'Share'),
                    VideoAction(icon: Icons.play_arrow, title: 'Play'),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoAction extends StatelessWidget {
  final IconData icon;
  final String title;

  const VideoAction({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 15),
          )
        ],
      ),
    );
  }
}
