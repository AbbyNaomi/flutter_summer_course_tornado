import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 3),
        child: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 1.35,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
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
                        child: Image.asset('assets/profile.png'),
                      ),
                    ),
                  ),
                  Text(
                    "  Төгөлдөр",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Rubik',
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ],
              ),
              // Padding(padding: EdgeInsets.only(top: 10)),
              Expanded(
                child: Container(
                  alignment: AlignmentDirectional.center,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.35,
                    width: double.infinity,
                    child: Image.asset(
                      "assets/postphoto.png",
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 12)),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(right: 16)),
                  SvgPicture.asset(
                    "assets/heart.svg",
                    width: 21,
                    height: 18,
                  ),
                  Padding(padding: EdgeInsets.only(right: 8)),
                  Text("12",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white))
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
              Flexible(
                child: Container(),
                flex: 2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
