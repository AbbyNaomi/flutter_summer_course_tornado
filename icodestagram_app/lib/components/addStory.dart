import 'package:flutter/material.dart';

import '../pages/add_story_screen.dart';

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
                border: Border.all(color: Colors.grey, width: 2)),
            width: 80,
            height: 80,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddStoryScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),
                child: Icon(Icons.add)),
          ),
          SizedBox(
            height: 5,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AddStoryScreen()));
            },
            child:Text(
              "Нэмэх",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                fontFamily: 'Rubik',
                color: Color(0xFFFFFFFF),
              ),
            ) ,
          ),
        ],
      ),
    );
  }
}
