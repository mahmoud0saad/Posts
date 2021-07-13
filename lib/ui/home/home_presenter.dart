import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:posts_app/models/post_item.dart';
import 'package:posts_app/models/post_item.dart';
import 'package:posts_app/base/presenter/base_presenter.dart';

import 'home_screen.dart';

class HomePresenter extends BasePresenter<HomeScreenState> {
  CollectionReference users = FirebaseFirestore.instance.collection('users');


  HomePresenter(){
    // FirebaseFirestore.instance.settings = Settings(persistenceEnabled: true);
    print("mano FirebaseFirestore.instance.collection('users')  ${FirebaseFirestore.instance.collection('users')}");
  }

  Stream<QuerySnapshot> getToDoList() {
    return users.snapshots();
   }

  void fetchPostsData() async{
       users.snapshots().listen ((QuerySnapshot event) {
      print("mano event ${event.size}");
      List<PostItem> postItems=event.docs.map((DocumentSnapshot document)  {
        return PostItem.fromDocumentSnapshot(document);
      }).toList();
      view.provider.clear();
      view.provider.addAll(postItems);
    });
  }
}
