import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';

import 'text_title.dart';

class SearchIdle extends StatelessWidget {
  const SearchIdle({super.key});

  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: 'Top Searches'),
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: ((context, index) => const TopSearchItemTile()),
              separatorBuilder: ((context, index) => kHeight),
              itemCount: 50),
        )
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: double.infinity,
      color: Colors.green,
    );
  }
}
