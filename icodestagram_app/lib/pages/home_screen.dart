import 'package:flutter/material.dart';

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
          padding: EdgeInsets.only(top: 14),
          child:  Column(
            children: [
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
              Row(
                children: [
                  Image.asset(
                    "assets/InnerOval.png",
                    width: 70,
                    height: 70,
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
