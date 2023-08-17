import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Text(
                'HomeScreen',
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: 'Lobster',
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),

              )
            ],
          ),
        ),
      ),
    );
  }
}
