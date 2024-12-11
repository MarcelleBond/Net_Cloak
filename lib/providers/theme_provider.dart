import 'package:flutter/material.dart';

import '../data/store.dart';

class ThemeProvider extends ChangeNotifier {
  late bool _isDarkMode;

  ThemeProvider() {
    if (Store.get("ThemeMode") == null) {
      _isDarkMode = true;
      Store.set("ThemeMode", true);
    } else {
      _isDarkMode = Store.get("ThemeMode") ?? true;
    }
  }

  bool get isDarkMode => _isDarkMode;
  set isDarkMode(bool value) {
    _isDarkMode = value;
    Store.set("ThemeMode", value);
    notifyListeners();
  }
}
