import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/fast_laugh/widgets/video_list_item.dart';

class ScreenFastAndLaughs extends StatelessWidget {
  const ScreenFastAndLaughs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: List.generate(
            20,
            (index) => VideoListItem(index: index),
          ),
        ),
      ),
    );
  }
}
