import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:posts_app/CommonUtils/size_config.dart';
import 'package:posts_app/base/view/base_state.dart';
import 'package:posts_app/generated/l10n.dart';
import 'package:posts_app/res/colors.dart';
import 'package:posts_app/route/fluro_navigator.dart';
import 'package:posts_app/ui/home/home_route.dart';
import 'package:rxdart/rxdart.dart';

import 'splash_presenter.dart';
import 'splash_provider.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends BaseState<SplashScreen, SplashPresenter>
    with AutomaticKeepAliveClientMixin, TickerProviderStateMixin {
  SplashProvider mProvider = SplashProvider();

  StreamSubscription _subscription;

  //initial firebase app
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasData || snapshot.hasError) _initSplash();
        return buildSplachWidget(context);
      },
    );
  }

  Scaffold buildSplachWidget(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.primary_color,
      body: Stack(
        children: <Widget>[
          Align(
            alignment: FractionalOffset.center,
            child: Text(
              S.of(context).appName,
              style: Theme.of(context).textTheme.headline1.copyWith(
                  color: MColors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  void _initSplash() {
    _subscription = Stream.value(1).delay(Duration(seconds: 1)).listen((_) {
      _openHomeScreen(context);
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    if (_subscription != null) {
      _subscription.cancel();
    }
  }

  @override
  SplashPresenter createPresenter() {
    return SplashPresenter();
  }

  _openHomeScreen(context) {
    NavigatorUtils.push(context, LoginRouter.loginPage,
        replace: true, clearStack: true);
  }

  @override
  bool get wantKeepAlive => true;
}
