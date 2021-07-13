
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class PostItem {
  PostItem({
    this.title,
    this.date,
    this.body,
    this.photo,
  });

  String title;
  String date;
  String body;
  String photo;

  factory PostItem.fromJson(String str) => PostItem.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PostItem.fromMap(Map<String, dynamic> json) => PostItem(
    title: json["title"] == null ? null : json["title"],
    date: json["date"] == null ? null : json["date"],
    body: json["body"] == null ? null : json["body"],
    photo: json["photo"] == null ? null : json["photo"],
  );

  Map<String, dynamic> toMap() => {
    "title": title == null ? null : title,
    "date": date == null ? null : date,
    "body": body == null ? null : body,
    "photo": photo == null ? null : photo,
  };

  factory PostItem.fromDocumentSnapshot( DocumentSnapshot document) =>PostItem.fromMap(document.data() as Map<String, dynamic>);

}
