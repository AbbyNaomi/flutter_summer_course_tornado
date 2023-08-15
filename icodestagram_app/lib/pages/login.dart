import 'package:flutter/material.dart';
import 'package:icodestagram_app/pages/sign_%20up.dart';
import 'package:icodestagram_app/user_model.dart';
import '../input_field.dart';

User newUser = User('Guest', 0);

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF000000),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(top: 160),
          child: Column(
            children: [
              const SizedBox(
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
              InputField(hintText: "Нэвтрэх нэр"),
              Padding(padding: EdgeInsets.only(top: 14)),
              InputField(hintText: "Нууц үг"),
              Padding(padding: EdgeInsets.only(top: 48)),
              StartButton(newUser),
              Padding(padding: EdgeInsets.only(top: 26)),
              const SizedBox(
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Шинэ хэрэглэгч үү?',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.w400,
                        color: Color(0x99FFFFFF),
                      ),
                    ),

                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
                      },
                      child: Text(
                        '  Бүртгүүлэх',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Rubik',
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFE86B02)
                          ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  void _createUser(String userName) {
    setState(() {
      newUser.userName = userName;
    });
  }
}

class StartButton extends StatelessWidget {
  const StartButton(User userName, {super.key});

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
          'Нэвтрэх',
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