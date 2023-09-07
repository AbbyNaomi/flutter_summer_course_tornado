import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:icodestagram_app/resources/storage_methods.dart';
import 'package:uuid/uuid.dart';

import '../models/story_models.dart';

class StoryMethods{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;
  final FirebaseFirestore _firestore= FirebaseFirestore.instance;
  Future<String> uploudImageToStorage(
      String childName, Uint8List file, bool isStory) async {

    Reference ref =
    _storage.ref().child(childName).child(_auth.currentUser!.uid);
    if (isStory) {
      String id = const Uuid().v1();
      ref = ref.child(id);
    }

    UploadTask uploadTask = ref.putData(file);
    TaskSnapshot snapshot = await uploadTask;
    String downloadUrl = await snapshot.ref.getDownloadURL();
    return downloadUrl;
  }
  Future<String> uploadStory({
    required String uid,
    required Uint8List file,
    required String username,
    required String profImage,
}) async {
    String result= 'Some error occured';

    try{
      String storyUrl=
          await StorageMethods().uploudImageToStorage('stories', file, false);
      String storyId= const Uuid().v1();

      StoryModel story =StoryModel(
        storyUrl: storyUrl,
        uid: uid,
        storyId:storyId,
        username: username,
        profImage: profImage,
      );

      _firestore.collection('stories').doc(storyId).set(story.toJson());
      result='success';
    } catch (e) {
      result = 0.toString();
    }
    return result;
  }
  Future<List<StoryModel>> getStories() async{
    try {
      final QuerySnapshot storiesSnapshot=
          await _firestore.collection('stories').get();

      // List<StoryModel> stories = storiesSnapshot.docs
      // .map((snapshot) => StoryModel.fromSnap(snapshot))
      // .toList();

      // return stories;
    }catch(e) {
      return[];
    }
  }
}