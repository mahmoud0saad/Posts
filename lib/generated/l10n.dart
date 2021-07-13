// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `ToDo List App`
  String get todoListApp {
    return Intl.message(
      'ToDo List App',
      name: 'todoListApp',
      desc: '',
      args: [],
    );
  }

  /// `Title`
  String get title {
    return Intl.message(
      'Title',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `title should not empty`
  String get titleShouldNotEmpty {
    return Intl.message(
      'title should not empty',
      name: 'titleShouldNotEmpty',
      desc: '',
      args: [],
    );
  }

  /// `body`
  String get body {
    return Intl.message(
      'body',
      name: 'body',
      desc: '',
      args: [],
    );
  }

  /// `body should not empty`
  String get bodyShouldNotEmpty {
    return Intl.message(
      'body should not empty',
      name: 'bodyShouldNotEmpty',
      desc: '',
      args: [],
    );
  }

  /// `add`
  String get add {
    return Intl.message(
      'add',
      name: 'add',
      desc: '',
      args: [],
    );
  }

  /// `ToDo App`
  String get todoApp {
    return Intl.message(
      'ToDo App',
      name: 'todoApp',
      desc: '',
      args: [],
    );
  }

  /// `Posts App`
  String get postsApp {
    return Intl.message(
      'Posts App',
      name: 'postsApp',
      desc: '',
      args: [],
    );
  }

  /// `Posts App`
  String get appName {
    return Intl.message(
      'Posts App',
      name: 'appName',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}