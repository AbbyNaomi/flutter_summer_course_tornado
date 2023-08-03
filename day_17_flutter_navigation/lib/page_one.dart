import 'package:day_17_flutter_navigation/page_two.dart';
import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page One'),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              child: Text('Go to Page Two'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const PageTwo()));
              },
            ),
          ),
          Center(
            child: ElevatedButton(
              child: Text('Go to Home Page'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
