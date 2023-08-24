import 'dart:ffi';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../utils/utils.dart';

class AddStoryScreen extends StatefulWidget {
  const AddStoryScreen({super.key});

  @override
  State<AddStoryScreen> createState() => _AddStoryScreenState();
}

class _AddStoryScreenState extends State<AddStoryScreen> {
  Uint8List? _file;
  bool isLouding=false;
  _selectImage(BuildContext context) async{
    return showDialog(context: context, builder: (BuildContext context){
      return SimpleDialog(
        title: Text(
          'create post',
        ),
        children: [
          SimpleDialogOption(
            child: Text(
              'take a photo'
            ),
            onPressed: () async {
              Navigator.pop(context);
              Uint8List file=await pickImage(
                ImageSource.camera
              );
              setState(() {
                _file=file;
              });
            },
          )
        ],
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
