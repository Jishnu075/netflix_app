import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/downloads/screen_downloads.dart';
import 'package:netflix_app/presentation/fast_and_laughs/screen_fast_and_laughs.dart';
import 'package:netflix_app/presentation/main_page/widgets/bottom_nav.dart';
import 'package:netflix_app/presentation/new_and_hot/screen_new_and_hot.dart';
import 'package:netflix_app/presentation/search/screen_search.dart';

// final _pages = [
//   ScreenMainPage(),
//   ScreenNewAndHot(),
//   ScreenFastAndLaughs(),
//   ScreenSearch(),
//   ScreenDownloads(),
// ];

// class ScreenMainPage extends StatelessWidget {
//   const ScreenMainPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: ValueListenableBuilder(
//             valueListenable: indexChangeNotifier,
//             builder: (context, int index, _) {
//               return _pages[index];
//             }),
//       ),
//       bottomNavigationBar: BottomNavigationWidget(),
//     );
//   }
// }

class ScreenMainPage extends StatelessWidget {
  const ScreenMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('MainPage'),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
