import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final String hintText;
  const InputField({super.key, required  this.hintText});

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343,
      height: 45,
      child: Column(
        children: [
          Expanded(
            child: TextField(
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
                hintText: '${widget.hintText}',
                hintStyle: const TextStyle(color: Color(0xFFA0A0A0)),
                suffixIcon: IconButton(
                  onPressed: () {
                  },
                  icon: const Icon(
                    Icons.clear,
                  ),
                ),
              ),

            ),
          ),
        ],
      ),
    );
  }
}
