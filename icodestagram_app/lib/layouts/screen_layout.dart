import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icodestagram_app/screen/add_post_screen.dart';
import 'package:icodestagram_app/screen/profile_screen.dart';

import '../pages/home_screen.dart';

class ScreenLayout extends StatefulWidget {
  const ScreenLayout({super.key});

  @override
  State<ScreenLayout> createState() => _ScreenLayoutState();
}

class _ScreenLayoutState extends State<ScreenLayout> {
  int _page = 0;
  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          onPageChanged: onPageChanged,
          children: const [
            HomeScreen(),
            AddPostScreen(),
            ProfileScreen(),
          ],
        ),
      ),
      bottomNavigationBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Icon(
                  Icons.home_outlined,
                  color: _page == 0 ? Colors.orange : Colors.white,
                ),
                if(_page == 0)
                Image.asset('assets/dot.png')
              ],
            ),
            // backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Icon(
                  Icons.add_box_outlined,
                  color: _page == 1 ? Colors.orange : Colors.white,
                ),
                if(_page == 1)
                  Image.asset('assets/dot.png')
              ],
            ),
            // backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Icon(
                  Icons.account_circle,
                  color: _page == 2 ? Colors.orange : Colors.white,
                ),
                if(_page == 2)
                  Image.asset('assets/dot.png')
              ],
            ),
            // backgroundColor: Colors.black,
          ),
        ],
        onTap: navigationTapped,
      ),
    );
  }

  void navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }
}
