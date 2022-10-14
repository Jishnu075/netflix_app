import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors.dart';

class VideoListItem extends StatelessWidget {
  const VideoListItem({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        color: Colors.accents[index % Colors.accents.length],
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: CircleAvatar(
                backgroundColor: kblackColor,
                child: Icon(
                  Icons.volume_off_outlined,
                  color: kWhiteColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(),
                  VideoActionWidget(
                      title: 'LOL', icon: Icons.emoji_emotions_outlined),
                  VideoActionWidget(title: 'My List', icon: Icons.add),
                  VideoActionWidget(title: 'Share', icon: Icons.telegram),
                  VideoActionWidget(title: 'Play', icon: Icons.play_arrow)
                ],
              ),
            )
          ],
        ),
      )
    ]);
  }
}

class VideoActionWidget extends StatelessWidget {
  const VideoActionWidget({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Icon(
            icon,
            size: 40,
            color: kWhiteColor,
          ),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
