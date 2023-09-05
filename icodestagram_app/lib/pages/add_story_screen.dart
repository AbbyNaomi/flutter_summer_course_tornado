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
  bool isLoading = false;

  _selectImage(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: Text(
              'create post',
            ),
            children: [
              SimpleDialogOption(
                child: Text('take a photo'),
                onPressed: () async {
                  Navigator.pop(context);
                  Uint8List? file = await pickImage(ImageSource.gallery);
                  if (file != null) {
                    setState(() {
                      _file = file;
                    });
                  }
                },
              )
            ],
          );
        });
  }

  void clearImage() {
    setState(() {
      _file = null;
    });
  }
  // void postStory(String uint, String username, String profile)async{
  //   setState(() {
  //     isLoading=true;
  //   });
  //   try{
  //     String
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return _file == null
        ? Scaffold(
            body: SafeArea(
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed:()=> Navigator.pop(context), icon: Icon(Icons.arrow_back)),
                      ],
                    ),
                    SizedBox(
                      height: 300,
                    ),
                    GestureDetector(
                      onTap: () => _selectImage(context),
                      child: Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add_a_photo,
                              color: Color(0XFFF99440),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text('Зураг оруулах')
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ))
        : Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 6,
                        ),
                        Stack(
                          alignment: AlignmentDirectional.topEnd,
                          children: [
                            SizedBox(
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height - 150,
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: MemoryImage(_file!)),
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                            Positioned(
                              child: CircleAvatar(
                                backgroundColor: Colors.black.withOpacity(0.2),
                                child: IconButton(
                                  onPressed: () => clearImage(),
                                  icon: Icon(
                                    Icons.clear,
                                    color: Color(0XFFE76A01),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        // IconButton(onPressed: (), icon: icon)
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}
