import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              Row(
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

              Row(
                children: [
                  Padding(padding: EdgeInsets.only(right: 16)),
                  Column(
                    children: [
                      Image.asset(
                        "assets/InnerOval.png",
                        width: 80,
                        height: 80,
                      ),
                      Padding(padding: EdgeInsets.only(top: 5)),
                      Text(
                        "Нэмэх",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Rubik',
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(right: 16)),
                  Column(
                    children: [
                      Image.asset(
                        "assets/InnerOval2.png",
                        width: 80,
                        height: 80,
                      ),
                      Padding(padding: EdgeInsets.only(top: 5)),
                      Text(
                        "Төгөлдөр",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Rubik',
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(right: 16)),
                  Column(
                    children: [
                      Image.asset(
                        "assets/InnerOval2.png",
                        width: 80,
                        height: 80,
                      ),
                      Padding(padding: EdgeInsets.only(top: 5)),
                      Text(
                        "Сарнай",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Rubik',
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(right: 16)),
                  Column(
                    children: [
                      Image.asset(
                        "assets/InnerOval2.png",
                        width: 80,
                        height: 80,
                      ),
                      Padding(padding: EdgeInsets.only(top: 5)),
                      Text(
                        "Ханхүү",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Rubik',
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 21)),
              Row(
                    children: [
                      Padding(padding: EdgeInsets.only(right: 16)),
                      Image.asset(
                        "assets/InnerOval2.png",
                        width: 35,
                        height: 35,
                      ),
                      Padding(padding: EdgeInsets.only(right: 10)),
                      Text(
                        "Төгөлдөр",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Rubik',
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 8)),
              Image.asset(
                "assets/photo.png",
                width: 375,
                height: 375,
              ),
              Padding(padding: EdgeInsets.only(top: 12)),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(right: 16)),
                  SvgPicture.asset( "assets/heart.svg",
                    width: 21,
                    height: 18,
                  ),
                  Padding(padding: EdgeInsets.only(right: 8)),
                  Text(
                      "12",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white
                      )
                  )
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 5)),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(right: 16)),
                  Text(
                    "joshua_l",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(right: 10)),
                  Text(
                      "Have a nice day",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                          color: Colors.white
                      )
                  )
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
