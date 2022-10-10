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
        kwidth,
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        const Spacer(),
        const Icon(
          Icons.cast,
          color: kWhiteColor,
        ),
        kwidth,
        Container(
          color: Colors.blue,
          height: 35,
          width: 35,
        ),
        kwidth,
      ],
    );
  }
}
