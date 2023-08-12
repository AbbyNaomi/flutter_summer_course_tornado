import 'package:flutter/material.dart';
import 'package:wordfind_app/gradient_letter.dart';
import 'package:wordfind_app/gradient_text.dart';
import 'package:wordfind_app/start_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 193),
        width: 310,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xFFE86B02),
              Color(0xFFFA9541),
            ],
          ),
        ),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const StartPage()));
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          child: const Text(
            'PLAY',
            style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 24,
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
      backgroundColor: const Color(0xFFFBF5F2),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/back1.png"),
        )),
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.only(top: 200)),
            Expanded(
                child: Column(
              children: [
                const Row(
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

                const GradientText("GAME", 31.6),
                const Padding(padding: EdgeInsets.all(1)),
                Expanded(child: Image.asset("assets/iCodeGuy.png")),
              ],
            ),
            ),
             const Padding(padding: EdgeInsets.only(bottom: 12.4)),
            const Expanded(
              child: GradientText("READY?", 25.0),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
