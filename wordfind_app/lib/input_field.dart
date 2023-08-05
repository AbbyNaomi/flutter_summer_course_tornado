import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final void Function(String) onSubmitted;

  const InputField({super.key, required this.onSubmitted});

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  late TextEditingController _textEditingController;
  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 310,
      height: 50,
      child: TextField(
        onSubmitted: (String value) {
          widget.onSubmitted(value);
        },
        controller: _textEditingController,
        maxLines: 1,
        style: const TextStyle(
            color: Color(0xFFE86B02),
            fontSize: 18,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w600),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
          filled: true,
          fillColor: Colors.white,
          prefixIcon: const Icon(
            Icons.person,
            color: Color(0xFFE86B02),
          ),
          hintText: 'Your Name',
          hintStyle: const TextStyle(color: Color(0xFFE86B02)),
          suffixIcon: IconButton(
            onPressed: () {_textEditingController.clear();},
            icon: const Icon(
              Icons.clear,
              color: Color(0xFFE86B02),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: const BorderSide(width: 0, style: BorderStyle.none),
          ),
        ),
      ),
    );
  }
}
