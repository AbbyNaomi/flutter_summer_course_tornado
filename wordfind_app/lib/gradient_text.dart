import 'package:flutter/cupertino.dart';

class GradientText extends StatelessWidget {
  final String text;
  final double size;
  const GradientText(this.text, this.size, {super.key});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        foreground: Paint()
          ..shader = const LinearGradient(
            colors: [
              Color(0xFFE86B02),
              Color(0xFFFA9541),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.0661, 0.761],
            transform: GradientRotation(88.82),
          ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
      ),
    );
  }
}
