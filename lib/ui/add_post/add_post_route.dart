import 'package:fluro/fluro.dart';
import 'package:posts_app/route/router_init.dart';

import 'add_post_screen.dart';

class AddPostRouter implements IRouterProvider {
  static String addToDoPage = AddPostScreen.TAG;

  @override
  void initRouter(FluroRouter router) {
    router.define(addToDoPage,
        handler: Handler(handlerFunc: (_, params) => AddPostScreen()));
  }
}
