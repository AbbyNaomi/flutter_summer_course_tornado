import 'package:flutter/material.dart';

class GradientLetter extends StatelessWidget {
  final String letter;

  const GradientLetter(this.letter, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Color(0xFFFF9002)),
      child: Container(
        child: FractionallySizedBox(
          widthFactor: 2 / 3,
          heightFactor: 2 / 3,
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromRGBO(
                      255,
                      144,
                      2,
                      0,
                    ),
                    Color(0xFFE48000)
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [-0.025, 1.6875],
                  transform: GradientRotation(180),
                ),
              ),
              child: Center(
                child: Text(
                  letter,
                  style: const TextStyle(
                    fontSize: 32,
                    height: 52 / 38,
                    color: Colors.white,
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
