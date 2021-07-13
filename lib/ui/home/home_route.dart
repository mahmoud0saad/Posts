
import 'package:fluro/fluro.dart';
import 'package:posts_app/route/router_init.dart';

import 'home_screen.dart';


class LoginRouter implements IRouterProvider {
  static String loginPage = HomeScreen.TAG;

  @override
  void initRouter(FluroRouter router) {
    router.define(loginPage,
        handler: Handler(handlerFunc: (_, params) => HomeScreen()));
  }
}
