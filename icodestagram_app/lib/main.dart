import 'package:flutter/material.dart';
import 'package:icodestagram_app/pages/home_screen.dart';
import 'package:icodestagram_app/pages/login.dart';
import 'package:icodestagram_app/pages/sign_%20up.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp( MaterialApp(
    theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Color.fromRGBO(0, 0, 0, 1),
    textTheme: Typography().white.apply(fontFamily: 'Rubik')),
    home:HomeScreen(),
  ));
}
