import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:posts_app/base/presenter/base_presenter.dart';

import 'add_post_screen.dart';

class AddPostPresenter extends BasePresenter<AddPostScreenState> {
  CollectionReference users = FirebaseFirestore.instance.collection('users');

  TextEditingController titleController = TextEditingController();
  TextEditingController bodyController = TextEditingController();

//method for check if valid input data , upload image and set post in firebase
  Future<void> sharePost() async {
    if (!isInputsValid()) return;
    view.showProgress();

    var imageUrl = await uploadImageIfHave();

    addPost(imageUrl);

    view.closeProgress();
    view.goBack();
  }

  //check if all data in text field is valid
  bool isInputsValid() {
    return view.formKey.currentState.validate();
  }

  //check if use is upload image and upload it in firebase storage
  Future<String> uploadImageIfHave() async {
    if (view.imageFile != null) {
      return await uploadImage(
          imageFile: File(view.imageFile.path), folderPath: "images");
    } else
      return null;
  }

  // set post in firebase , method take user photo url
  void addPost(String imageUrl) {
    users
        .add({
          'date':
              "${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second}",
          'body': bodyController.text,
          'photo': imageUrl ?? "",
          'title': titleController.text
        })
        .then((value) => print("mano add done  $value"))
        .catchError((error) => print("mano error $error"))
        .whenComplete(() => print("mano  whenComplete"));
  }
}

//upload image in firebase storage , take file that uploaded from user and destination of file
Future<String> uploadImage(
    {@required File imageFile, @required String folderPath}) async {
  String fileName = DateTime.now().millisecondsSinceEpoch.toString();

  Reference reference =
      FirebaseStorage.instance.ref().child(folderPath).child(fileName);

  TaskSnapshot storageTaskSnapshot = await reference.putFile(imageFile);

  print(storageTaskSnapshot.ref.getDownloadURL());

  var dowUrl = await storageTaskSnapshot.ref.getDownloadURL();

  return dowUrl;
}
