import 'package:flutter/material.dart';
import 'package:wordfind_app/gradient_letter.dart';
import 'package:wordfind_app/gradient_text.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        margin: EdgeInsets.only(bottom: 193),
        width: 310,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xFFE86B02),
              Color(0xFFFA9541),
            ],
          ),
        ),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          child: Text(
            'PLAY',
            style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 24,
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
      backgroundColor: Color(0xFFFBF5F2),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/back1.png"),
        )),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.only(top: 200)),
            Expanded(
                child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GradientLetter("W"),
                    Padding(padding: EdgeInsets.all(7)),
                    GradientLetter("O"),
                    Padding(padding: EdgeInsets.all(7)),
                    GradientLetter("R"),
                    Padding(padding: EdgeInsets.all(7)),
                    GradientLetter("D"),
                  ],
                ),

                GradientText("GAME", 31.6),
                Padding(padding: EdgeInsets.all(10)),
                Expanded(child: Image.asset("assets/iCodeGuy.png")),
              ],
            ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 12.4)),
            Expanded(
              child: GradientText("READY?", 25.0),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
