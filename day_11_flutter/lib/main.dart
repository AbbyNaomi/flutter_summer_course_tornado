import 'package:flutter/material.dart';

void main() {
  print('Flutter Day 11');

  final Text myText=Text(
      'Hello Tornado',
  style: TextStyle(fontSize: 24, color: Color(0xFFa01313)),
  );
  final Center myCenteredText=Center(
    child: myText,
  );
  final Scaffold myNiceDesign=Scaffold(
    body: myCenteredText,
  );
  final MaterialApp myApp=MaterialApp(
    home:myNiceDesign,
  );
final MySuperApp mySuperApplication=MySuperApp();

  runApp(mySuperApplication);
}

class MySuperApp extends StatelessWidget{
  const MySuperApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Super Duper App'),
        ),
        body: Container(
          child: Center(
            child: Text(
                'Hello Tornado',
                    style: TextStyle(
                        fontSize: 24, color: Color(0xFFa01313), fontFamily: 'Ribeye'),
            ),
          )) ,
        floatingActionButton:
        FloatingActionButton(onPressed: (){}, child: Image.asset('assets/profile.png')),
      ),
    );
  }

}