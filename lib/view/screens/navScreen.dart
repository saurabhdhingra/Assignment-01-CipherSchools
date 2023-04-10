import 'package:cipher/view/screens/coursesView.dart';
import 'package:cipher/view/screens/homeView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/bottomBar.dart';
import 'detailsView.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: selectedScreen(),
      bottomNavigationBar: BottomBar(
        screens: _screensData,
        setIndex: (int value) => setState(() => _currentIndex = value),
        index: _currentIndex,
        theme: Theme.of(context),
      ),
    );
  }

  Widget selectedScreen() {
    switch (_currentIndex) {
      case 0:
        return HomeView();
      case 1:
        return CoursesView();

      case 3:
        return DetailsView();
      default:
        return const Scaffold(
          body: Center(
            child: Text("Not Available"),
          ),
        );
    }
  }

  final List<List> _screensData = [
    [
      Icons.home,
      'Home',
    ],
    [
      Icons.library_books_outlined,
      'Courses',
    ],
    [
      CupertinoIcons.compass_fill,
      'Trending',
    ],
    [
      CupertinoIcons.person_fill,
      'My Profile',
    ],
  ];
  int _currentIndex = 0;
}
