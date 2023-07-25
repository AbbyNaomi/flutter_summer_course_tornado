import 'package:flutter/material.dart';
import 'package:wordfind_app/gradient_letter.dart';
import 'package:wordfind_app/gradient_text.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF5F2),
        body: Container(
          decoration: BoxDecoration(
            image:DecorationImage(
              image: AssetImage(
                  "assets/back1.png"
              ),
            )
          ),
          child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                  padding: EdgeInsets.only(
                      top: 200
                  )
              ),
              Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: Center,
                        children: [
                          GradientLetter(
                              "WORD"
                          )
                        ],
                )
              ],
                    
              )
              ],
                  )
              )
            ],
            ),
          ),
        )
  }
}
