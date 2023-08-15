import 'package:flutter/material.dart';
import 'package:icodestagram_app/pages/login.dart';

import '../input_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF000000),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(top: 160),
          child: const Column(
            children: [
              SizedBox(
                width: 148.0,
                height: 44.0,
                child: Text(
                  'iCodegram',
                  style: TextStyle(
                    fontSize: 35.5,
                    fontFamily: 'Lobster',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 52),
              ),
              InputField(hintText: "Утасны дугаар"),
              Padding(padding: EdgeInsets.only(top: 14)),
              InputField(hintText: "Хэрэглэгчийн нэр"),
              Padding(padding: EdgeInsets.only(top: 14)),
              InputField(hintText: "Нууц үг"),
              Padding(padding: EdgeInsets.only(top: 14)),
              InputField(hintText: "Нууц үг давтах"),
              Padding(padding: EdgeInsets.only(top: 48)),
              SignUpButton(),
              Padding(padding: EdgeInsets.only(top: 26)),
              SizedBox(
                width: 41,
                height: 17,
                child: Text(
                  'Эсвэл',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Rubik',
                    fontWeight: FontWeight.w400,
                    color: Color(0x99FFFFFF),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              SizedBox(
                width: double.maxFinite,
                height: 18,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Бүртгэлтэй юу?',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.w400,
                        color: Color(0x99FFFFFF),
                      ),
                    ),
                    // TextButton(
                    //   onPressed: () {},
                    //   child: Text(
                    //     '  Нэвтрэх',
                    //     style: TextStyle(
                    //         fontSize: 15,
                    //         fontFamily: 'Rubik',
                    //         fontWeight: FontWeight.w400,
                    //         color: Color(0xFFE86B02)),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 45,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color(0xFFE86B02), Color(0xFFFA9541)],
          ),
          borderRadius: BorderRadius.circular(1)),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          elevation: 0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        child: Text(
          'Бүртгүүлэх',
          style: TextStyle(
            fontFamily: 'Rubik',
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
