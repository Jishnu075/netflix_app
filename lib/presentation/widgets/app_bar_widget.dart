import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors.dart';
import 'package:netflix_app/core/constants.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  const AppBarWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth,
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
        ),
        const Spacer(),
        const Icon(
          Icons.cast,
          color: kWhiteColor,
        ),
        kWidth,
        Container(
          color: Colors.blue,
          height: 35,
          width: 35,
        ),
        kWidth,
      ],
    );
  }
}
