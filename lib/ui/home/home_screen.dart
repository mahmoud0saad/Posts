import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:posts_app/base/view/base_state.dart';
import 'package:posts_app/generated/l10n.dart';
import 'package:posts_app/models/post_item.dart';
import 'package:posts_app/res/colors.dart';
import 'package:posts_app/ui/add_post/add_post_screen.dart';
import 'package:posts_app/ui/home/widgets/ItemStory.dart';
import 'package:provider/provider.dart';

import 'home_presenter.dart';
import 'home_provider.dart';

class HomeScreen extends StatefulWidget {
  static bool isArabic = true;
  static const String TAG = "/HomeScreen";

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends BaseState<HomeScreen, HomePresenter>
    with AutomaticKeepAliveClientMixin, TickerProviderStateMixin {
  HomeProvider<PostItem> provider = HomeProvider<PostItem>();

  double opacity = 0.0;

  @override
  void initState() {
    super.initState();
    mPresenter.fetchPostsData();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ChangeNotifierProvider<HomeProvider<PostItem>>(
      create: (_) => provider,
      child: Material(
        child: SafeArea(
          child: Scaffold(
              appBar: buildAppBar(context),
              body: buildBodyOfToDoList(),
              floatingActionButton: buildFloatingActionButton(context)),
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: MColors.primary_color,
      title: Text(
        S.of(context).appName,
        style: Theme.of(context).textTheme.headline5.copyWith(color: Colors.white),
      ),
      centerTitle: true,
    );
  }

  FloatingActionButton buildFloatingActionButton(BuildContext context) {
    return FloatingActionButton(
        elevation: 0.0,
        child: new Icon(Icons.add),
        backgroundColor: MColors.primary_color,
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => AddPostScreen()));
        });
  }

  Widget buildBodyOfToDoList() {
    return Consumer<HomeProvider<PostItem>>(
      builder: (context, _, __) {
        return ListView.builder(
            shrinkWrap: true,
            itemCount: provider?.list?.length ?? 0,
            itemBuilder: (BuildContext context, int index) {
              return PostWidget(
                toDoItem: provider?.list[index],
              );
            });
      },
    );
  }




  @override
  HomePresenter createPresenter() {
    return HomePresenter();
  }

  @override
  bool get wantKeepAlive => true;

  bool checkPlatformIos() {
    return Platform.isIOS;
  }
}

