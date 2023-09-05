

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:icodestagram_app/layouts/screen_layout.dart';
import 'package:icodestagram_app/pages/home_screen.dart';
import 'package:icodestagram_app/pages/login.dart';
import 'package:icodestagram_app/pages/sign_%20up.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(
    theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color.fromRGBO(0, 0, 0, 1),
        textTheme: Typography().white.apply(fontFamily: 'Rubik')),
    home: StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        // snapshot.connectionState==ConnectionState.active ?
        if (snapshot.connectionState == ConnectionState.active) {
          if (snapshot.hasData) {
            return ScreenLayout();
          } else if (snapshot.hasError) {
            return Center(
              child: Text('${snapshot.error}'),
            );
          }
        } else if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          );
        }
        return Login();
      },
    ),
  ));
}
