import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});
  final _widgetList = [const _SmartDownloads(), Section2(), const Section3()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: 'Downloads',
          )),
      body: ListView.separated(
        itemCount: _widgetList.length,
        itemBuilder: (context, index) => _widgetList[index],
        separatorBuilder: ((context, index) => const SizedBox(
              height: 35,
            )),
      ),
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10),
      child: Row(
        children: const [
          Icon(
            Icons.settings,
            color: kWhiteColor,
          ),
          kWidth,
          Text(
            'Smart Downloads',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});
  final imageList = [
    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/dLhbSD0Xh2tDggRwqA4qZWmekQU.jpg',
    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/olAK0DWZmTpqRTRyNpqFUxKGbw6.jpg',
    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/u3bZgnGQ9T01sWNhyveQz0wH0Hl.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        const Text(
          'Introducing Downloads for You',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          textAlign: TextAlign.center,
        ),
        kHeight,
        const Text(
          "We'll download a personalised selection of \n movies and shows for you, so there's \n always something to watch on your \n device.",
          textAlign: TextAlign.center,
          style: TextStyle(color: kTextGrey, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: size.width,
          height: size.height * 0.4,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 37, 37, 37),
                  radius: size.width * 0.35,
                ),
              ),
              DownloadsImageWidget(
                image: imageList[2],
                angle: -15,
                margin: const EdgeInsets.only(right: 170),
              ),
              DownloadsImageWidget(
                image: imageList[1],
                angle: 15,
                margin: const EdgeInsets.only(left: 170),
              ),
              DownloadsImageWidget(
                image: imageList[0],
                angle: 0,
                margin: const EdgeInsets.only(
                  top: 20,
                ),
                heightRatio: 0.27,
                widthRatio: .39,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          MaterialButton(
            minWidth: size.width - 50,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            onPressed: () {},
            color: kblueColor,
            textColor: kWhiteColor,
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Set up',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          kHeight,
          MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            minWidth: size.width - 100,
            textColor: kblackColor,
            color: kWhiteColor,
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'See What You Can Download',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    Key? key,
    required this.image,
    required this.angle,
    this.margin = EdgeInsets.zero,
    this.widthRatio = 0.36,
    this.heightRatio = 0.25,
  }) : super(key: key);

  final double angle;
  final String image;
  final double widthRatio;
  final double heightRatio;
  final EdgeInsetsGeometry margin;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width * widthRatio,
        height: size.height * heightRatio,
        decoration: BoxDecoration(
          color: kblackColor,
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
