import 'dart:typed_data';

import 'package:flutter/material.dart';

import '../models/user_model.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({
    super.key,
  });

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  Uint8List? _file;
  late TextEditingController _descriptionController;
  // User user = UserProvider.getUser();
  @override
  Widget build(BuildContext context) {
    return _file == null
        ? Center(
            child: IconButton(
              icon: Icon(Icons.upload),
              onPressed: () {
                _selectImage(context);
              },
            ),
          )
        : Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                ),
                onPressed: () {},
              ),
              title: Text('Post to'),
              actions: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Post',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            body: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage('user.photoUrl'),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.3,
                            child: TextField(
                              controller: _descriptionController,
                              decoration: InputDecoration(
                                hintText: 'Write a Caption',
                                border: InputBorder.none,
                              ),
                              maxLines: 8,
                            ),

                    ),
                    SizedBox(
                      height: 45,
                      width: 45,
                      child: AspectRatio(
                        child:Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  alignment:FractionalOffset.topCenter,
                                  fit: BoxFit.fill,
                                  image: MemoryImage(
                                      _file!
                                  )
                              )
                          ),
                        ),
                        aspectRatio: 487 / 451,
                      ),
                    ),
                    Divider()
                  ],
                ),
              ],
            ),
          );
  }
  _selectImage(BuildContext context)async{
    return showDialog(
        context: context,
        builder:
    );
  }
}
