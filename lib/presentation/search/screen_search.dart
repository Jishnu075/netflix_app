import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors.dart';
import 'package:netflix_app/presentation/main_page/widgets/bottom_nav.dart';
import 'package:netflix_app/presentation/search/widgets/search_idle.dart';
import 'package:netflix_app/presentation/search/widgets/search_result.dart';
import 'widgets/text_title.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CupertinoTextField(
                cursorColor: Colors.red,
                padding: EdgeInsets.all(10),
                clearButtonMode: OverlayVisibilityMode.editing,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 32, 32, 32),
                ),
                placeholder: 'Search',
                placeholderStyle: TextStyle(color: Colors.grey),
                prefix: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.search,
                      color: Colors.grey,
                    )),
                style: TextStyle(color: kWhiteColor),
              ),
              Expanded(
                //NB : TWO SCREENS ARE TO BE DISPLAYED, SO RE-EDIT THIS AREA ACCORDINGLY LATER
                // child: SearchIdle(),
                child: SearchResultWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
