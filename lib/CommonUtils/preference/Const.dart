import 'package:flutter/cupertino.dart';

 ValueNotifier<Locale> mobileLanguage = new ValueNotifier(Locale('en', ''));

class Const {
  static const String CURRENT_USER_KEY = 'CURRENT_USER_KEY';

  static const String USER_NAME = 'USER_NAME';

  static const String USER_IMAGE = 'USER_IMAGE';

  static const String IS_LOGIN_KEY = "is_logged_in";

  static const String USER_TOKEN = "USER_TOKEN";

  static const String APP_LOCAL = "APP_LOCAL";

  static const String AVAILABLE_TEACHER = "AVAILABLE_TEACHER";

  static var SOURCE_FORGET_PASSWORD="FORGET";

  static var SOURCE_REGISTER="Register";

  static var SOURCE_LOGIN="LOGIN";

  static var SOURCE_HOME="HOME";


}
