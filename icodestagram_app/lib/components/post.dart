import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Post extends StatelessWidget {
  final String hintText;
  final String profile;
  final String photo;
  const Post(
      {super.key,
      required this.hintText,
      required this.profile,
      required this.photo});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: SizedBox(
          width: 375,
          height: 425,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(top: 21)),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(right: 10)),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.orange, width: 2)),
                    width: 40,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        padding: EdgeInsets.zero,
                      ),
                      child: ClipOval(
                        child: Image.asset('$profile'),
                      ),
                    ),
                  ),
                  Text(
                    "$hintText",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Rubik',
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Expanded(
                child: Container(
                  alignment: AlignmentDirectional.center,
                  child: SizedBox(
                    height: 375,
                    width: 375,
                    child: Image.asset(
                      "$photo",
                      fit: BoxFit.cover,
                      // fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 12)),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(right: 16)),
                  SvgPicture.asset(
                    "assets/heart.svg",
                    width: 21,
                    height: 18,
                  ),
                  const Padding(padding: EdgeInsets.only(right: 8)),
                  const Text("12",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white))
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 5)),
              const Row(
                children: [
                  Padding(padding: EdgeInsets.only(right: 16)),
                  Text(
                    "joshua_l",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  Padding(padding: EdgeInsets.only(right: 10)),
                  Text(
                    "Have a nice day",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
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
