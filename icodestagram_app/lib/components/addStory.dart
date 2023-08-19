import 'package:flutter/material.dart';

class AddStoryButton extends StatelessWidget {
  const AddStoryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 85,
      height: 100,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Colors.grey,width: 2)
            ),
            width: 80,
            height: 80,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              child: Icon(
                Icons.add
              )
            ),
          ),
          SizedBox(
            height: 5,
          ),
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
    );
  }
}

