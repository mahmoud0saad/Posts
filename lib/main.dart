import 'package:firebase_core/firebase_core.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart' hide Router;
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:posts_app/generated/l10n.dart';
import 'package:posts_app/res/colors.dart';
import 'package:posts_app/res/setting.dart';
import 'package:posts_app/route/application.dart';
import 'package:posts_app/route/routers.dart';
import 'package:posts_app/ui/splash_screen/splash_screen.dart';

Future<void> main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp() {
    final router = FluroRouter();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Setting.mobileLanguage,
      builder: (context, Locale local, _) {
        return MaterialApp(
          locale: local,
          localizationsDelegates: [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          debugShowCheckedModeBanner: false,
          title: "Posts",
          theme: ThemeData(
              hintColor: MColors.hint_color,
              primaryColor: MColors.primary_color,
              fontFamily: "Tajawal"),
          home: SplashScreen(),
          // home: SplashScreen(),
        );
      },
    );
  }
}
