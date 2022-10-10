import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});
  final imageList = [
    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/dLhbSD0Xh2tDggRwqA4qZWmekQU.jpg',
    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/olAK0DWZmTpqRTRyNpqFUxKGbw6.jpg',
    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/u3bZgnGQ9T01sWNhyveQz0wH0Hl.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: 'Downloads',
          )),
      body: ListView(
        children: [
          SizedBox(
            height: 15,
          ),
          Row(
            children: const [
              kwidth,
              Icon(
                Icons.settings,
                color: kWhiteColor,
              ),
              kwidth,
              Text(
                'Smart Downloads',
                style: kBoldTextStyle,
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          const Text(
            'Introducing Downloads for You',
            style: kBoldTextStyle,
          ),
          const Text(
            'We\'ll download a personalised selection of movies and shows for you, so there\'s always something to watch on your device.',
          ),
          Container(
            width: size.width,
            height: size.height * 0.5,
            color: kblackColor,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Center(
                  child: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 37, 37, 37),
                    radius: size.width * 0.35,
                  ),
                ),
                DownloadsImageWidget(
                  image: imageList[2],
                  angle: -15,
                  margin: EdgeInsets.only(right: 150),
                ),
                DownloadsImageWidget(
                  image: imageList[1],
                  angle: 15,
                  margin: EdgeInsets.only(left: 150),
                ),
                DownloadsImageWidget(
                  image: imageList[0],
                  angle: 0,
                  margin: EdgeInsets.only(
                    top: 20,
                  ),
                  heightRatio: 0.27,
                  widthRatio: .39,
                ),
              ],
            ),
          ),
          MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            onPressed: () {},
            color: kblueColor,
            textColor: kWhiteColor,
            child: Text(
              'Set up',
              style: kBoldTextStyle,
            ),
          ),
          MaterialButton(
            textColor: kblackColor,
            color: kWhiteColor,
            onPressed: () {},
            child: Text(
              'See What You Can Download',
              style: kBoldTextStyle,
            ),
          )
        ],
      ),
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  DownloadsImageWidget({
    Key? key,
    required this.image,
    required this.angle,
    this.margin = EdgeInsets.zero,
    this.widthRatio = 0.36,
    this.heightRatio = 0.25,
  }) : super(key: key);

  final double angle;
  final String image;
  double widthRatio;
  double heightRatio;
  EdgeInsetsGeometry margin;
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
            image: DecorationImage(image: NetworkImage(image))),
      ),
    );
  }
}
