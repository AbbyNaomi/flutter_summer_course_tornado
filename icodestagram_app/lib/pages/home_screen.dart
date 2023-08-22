import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icodestagram_app/components/addStory.dart';
import 'package:icodestagram_app/components/post.dart';
import 'package:icodestagram_app/components/watchStory.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF000000),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 14, right: 16),
          child: Column(
            children: [
              const Row(
                children: [
                  Padding(padding: EdgeInsets.only(right: 16)),
                  SizedBox(
                    width: 107,
                    height: 32,
                    child: Text(
                      'iCodegram',
                      style: TextStyle(
                        fontSize: 25.64,
                        fontFamily: 'Lobster',
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.only(top: 8)),
              const Row(
                children: [
                  Padding(padding: EdgeInsets.only(right: 16, top: 5)),
                  AddStoryButton(),
                  Padding(padding: EdgeInsets.only(right: 12)),
                  WatchStoryButton(
                    hintext: 'Төгөлдөр',
                  ),
                  Padding(padding: EdgeInsets.only(right: 12)),
                  WatchStoryButton(
                    hintext: 'Сарнай',
                  ),
                  Padding(padding: EdgeInsets.only(right: 12)),
                  WatchStoryButton(
                    hintext: 'Ханхүү',
                  ),
                ],
              ),
              Post(),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(right: 45)),
                  Column(
                    children: [
                      SvgPicture.asset(
                        'assets/Home.svg',
                        width: 23.4,
                        height: 23.2,
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      SvgPicture.asset(
                        'assets/dot.svg',
                        width: 8,
                        height: 8,
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(right: 120)),
                  SvgPicture.asset(
                    'assets/addIcon.svg',
                    width: 23.4,
                    height: 23.2,
                  ),
                  Padding(padding: EdgeInsets.only(right: 120)),
                  SvgPicture.asset(
                    'assets/user.svg',
                    width: 23.4,
                    height: 23.2,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
