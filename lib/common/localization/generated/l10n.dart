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
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class L10n {
  L10n();

  static L10n? _current;

  static L10n get current {
    assert(_current != null,
        'No instance of L10n was loaded. Try to initialize the L10n delegate before accessing L10n.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<L10n> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = L10n();
      L10n._current = instance;

      return instance;
    });
  }

  static L10n of(BuildContext context) {
    final instance = L10n.maybeOf(context);
    assert(instance != null,
        'No instance of L10n present in the widget tree. Did you add L10n.delegate in localizationsDelegates?');
    return instance!;
  }

  static L10n? maybeOf(BuildContext context) {
    return Localizations.of<L10n>(context, L10n);
  }

  /// `(IQ) Test`
  String get iqTest {
    return Intl.message(
      '(IQ) Test',
      name: 'iqTest',
      desc: '',
      args: [],
    );
  }

  /// `Ready?`
  String get ready {
    return Intl.message(
      'Ready?',
      name: 'ready',
      desc: '',
      args: [],
    );
  }

  /// `Check yourself`
  String get checkYourself {
    return Intl.message(
      'Check yourself',
      name: 'checkYourself',
      desc: '',
      args: [],
    );
  }

  /// `Dart`
  String get dart {
    return Intl.message(
      'Dart',
      name: 'dart',
      desc: '',
      args: [],
    );
  }

  /// `White`
  String get white {
    return Intl.message(
      'White',
      name: 'white',
      desc: '',
      args: [],
    );
  }

  /// `A very weak result`
  String get aVeryWeakResult {
    return Intl.message(
      'A very weak result',
      name: 'aVeryWeakResult',
      desc: '',
      args: [],
    );
  }

  /// `Weak`
  String get weak {
    return Intl.message(
      'Weak',
      name: 'weak',
      desc: '',
      args: [],
    );
  }

  /// `Low level`
  String get lowLevel {
    return Intl.message(
      'Low level',
      name: 'lowLevel',
      desc: '',
      args: [],
    );
  }

  /// `Average`
  String get average {
    return Intl.message(
      'Average',
      name: 'average',
      desc: '',
      args: [],
    );
  }

  /// `Clever`
  String get clever {
    return Intl.message(
      'Clever',
      name: 'clever',
      desc: '',
      args: [],
    );
  }

  /// `Very smart`
  String get verySmart {
    return Intl.message(
      'Very smart',
      name: 'verySmart',
      desc: '',
      args: [],
    );
  }

  /// `Hyper smart`
  String get hyperSmart {
    return Intl.message(
      'Hyper smart',
      name: 'hyperSmart',
      desc: '',
      args: [],
    );
  }

  /// `Genius`
  String get genius {
    return Intl.message(
      'Genius',
      name: 'genius',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to exit the test?`
  String get areYouSureYouWantToExitTheTest {
    return Intl.message(
      'Are you sure you want to exit the test?',
      name: 'areYouSureYouWantToExitTheTest',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `A`
  String get a {
    return Intl.message(
      'A',
      name: 'a',
      desc: '',
      args: [],
    );
  }

  /// `B`
  String get b {
    return Intl.message(
      'B',
      name: 'b',
      desc: '',
      args: [],
    );
  }

  /// `C`
  String get c {
    return Intl.message(
      'C',
      name: 'c',
      desc: '',
      args: [],
    );
  }

  /// `D`
  String get d {
    return Intl.message(
      'D',
      name: 'd',
      desc: '',
      args: [],
    );
  }

  /// `E`
  String get e {
    return Intl.message(
      'E',
      name: 'e',
      desc: '',
      args: [],
    );
  }

  /// `F`
  String get f {
    return Intl.message(
      'F',
      name: 'f',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get back {
    return Intl.message(
      'Back',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Again?`
  String get again {
    return Intl.message(
      'Again?',
      name: 'again',
      desc: '',
      args: [],
    );
  }

  /// `Menu`
  String get menu {
    return Intl.message(
      'Menu',
      name: 'menu',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<L10n> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'uk'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<L10n> load(Locale locale) => L10n.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
