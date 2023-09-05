import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icodestagram_app/components/addStory.dart';
import 'package:icodestagram_app/components/post.dart';
import 'package:icodestagram_app/components/watchStory.dart';
import 'package:icodestagram_app/layouts/screen_layout.dart';
import 'package:image_picker/image_picker.dart';

import '../utils/utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Uint8List? _image;
  selectImage() async {
    Uint8List image = await pickImage(ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  List<Widget> stories = [
    Padding(padding: EdgeInsets.only(right: 7)),
    AddStoryButton(),
    Padding(padding: EdgeInsets.only(right: 7)),
    WatchStoryButton(hintext: 'Төгөлдөр'),
    Padding(padding: EdgeInsets.only(right: 7)),
    WatchStoryButton(hintext: 'Сарнай'),
    Padding(padding: EdgeInsets.only(right: 7)),
    WatchStoryButton(hintext: 'Ханхүү'),
    Padding(padding: EdgeInsets.only(right: 7)),
    WatchStoryButton(hintext: 'Цэцэгээ'),
    Padding(padding: EdgeInsets.only(right: 7)),
    WatchStoryButton(hintext: 'Сараа'),
  ];
  List<Widget> posts = [
    Post(
      hintText: '  Төгөлдөр',
      profile: 'assets/profile.png',
      photo: 'assets/photo.png',
    ),
    Post(
      hintText: '  Сарнай',
      profile: 'assets/profile2.png',
      photo: 'assets/postphoto2.png',
    ),
    Post(
      hintText: '  Ханхүү',
      profile: 'assets/profile.png',
      photo: 'assets/photo.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<Object>(
        stream: FirebaseFirestore.instance.collection("posts").snapshots(),
        builder: (context, AsyncSnapshot snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(
              child: CircularProgressIndicator(),
            );
          }

        return CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              floating: true,
              backgroundColor: Colors.black,
              expandedHeight: 40,
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: EdgeInsets.only(left: 10),
                title: Text(
                  'iCodegram',
                  style: TextStyle(
                    fontSize: 35.5,
                    fontFamily: 'Lobster',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              SizedBox(
                  height: 100,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: stories.length,
                      itemBuilder: (context, index) {
                        return stories[index];
                      })),
              ListView.separated(
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 10,
                    );
                  },
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    return posts[index];
                  }),
            ])),

          ],
        );},
      ),
    );
  }

}

// Container(
// height: 15000,
// child: const Column(
// children: [
// Row(
// children: [
// Padding(padding: EdgeInsets.only(right: 16)),

// ],
// ),
// Padding(padding: EdgeInsets.only(top: 8)),
// Row(
// children: [
// Padding(padding: EdgeInsets.only(right: 16, top: 5)),
// AddStoryButton(),
// Padding(padding: EdgeInsets.only(right: 12)),
// WatchStoryButton(
// hintext: 'Төгөлдөр',
// ),
// Padding(padding: EdgeInsets.only(right: 12)),
// WatchStoryButton(
// hintext: 'Сарнай',
// ),
// Padding(padding: EdgeInsets.only(right: 12)),
// WatchStoryButton(
// hintext: 'Ханхүү',
// ),
// ],
// ),
// Post(hintText: '  Төгөлдөр', profile: 'assets/profile.png', photo: 'assets/photo.png',),
// Post(hintText: '  Сарнай', profile: 'assets/profile2.png', photo: 'assets/postphoto2.png',),
// Post(hintText: '  Ханхүү', profile: 'assets/profile.png', photo: 'assets/photo.png',),
//
// ScreenLayout(),
// ],
// ),
// ),
