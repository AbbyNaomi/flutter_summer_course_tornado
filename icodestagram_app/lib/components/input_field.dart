import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  final TextEditingController editingController;
  final TextInputType textInputType;
  const InputField({super.key, required  this.hintText, required this.isPassword, required this.editingController, required this.textInputType});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343,
      height: 45,
      child:
         TextField(
             controller: editingController,
              maxLines: 1,
              style: const TextStyle(
                color: Color(0xFFA0A0A0),
                fontSize: 15,
                fontFamily: 'Rubik',
                fontWeight: FontWeight.w400,
              ),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.white),
                ),
                filled: true,
                fillColor: Colors.black,
                hintText: '$hintText',
                hintStyle: const TextStyle(color: Color(0xFFA0A0A0)),
                suffixIcon: IconButton(
                  onPressed: () {
                  },
                  icon: const Icon(
                    Icons.clear,
                  ),
                ),

              ),
              obscureText: isPassword,
              keyboardType: textInputType,

            ),

    );
  }
}
