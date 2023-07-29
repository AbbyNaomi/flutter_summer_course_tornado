import 'package:flutter/material.dart';

class LabeledContainer extends StatelessWidget {
  double? width;
  double? height;
  final Color color;
  final String text;
  Color? textColor;

  LabeledContainer(
      {Key? key,
      this.width,
      this.height = double.infinity,
      required this.color,
      required this.text,
      this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: color,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
