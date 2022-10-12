import 'package:flutter/material.dart';

class SearchTextTitle extends StatelessWidget {
  const SearchTextTitle({
    required this.title,
    Key? key,
  }) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 15),
      child: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}
