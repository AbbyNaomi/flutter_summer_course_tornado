import 'package:flutter/material.dart';

class WatchStoryButton extends StatelessWidget {
  final String hintext;
  const WatchStoryButton({super.key, required this.hintext});

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
                border: Border.all(color: Colors.orange,width: 2)
            ),
            width: 80,
            height: 80,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  padding: EdgeInsets.zero,
                ),
                child: ClipOval(
                  child: Image.asset('assets/images/profile.png'),
                )
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "$hintext",
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
