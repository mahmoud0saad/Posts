import 'dart:convert';

import 'package:posts_app/base/provider/base_provider.dart';
 import 'package:shared_preferences/shared_preferences.dart';

class AddPostProvider<T> extends BaseProvider<T> {
  SharedPreferences sharedPreferences;

}
