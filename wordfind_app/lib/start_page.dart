import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/back2.png",
                ),
                fit: BoxFit.cover),
          ),
        ),
      ),
      floatingActionButton: Container(
        // margin: EdgeInsets.all(0),
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            color: Color(0xFFFA9541),
            borderRadius: BorderRadius.circular(20)
          ),
          child: IconButton(
            padding: EdgeInsets.all(0),
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
            color: Colors.white,
          ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }
}
