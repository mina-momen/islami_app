import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyProvider extends ChangeNotifier {
  String languageCode = "en";
  ThemeMode themeMode = ThemeMode.light;

  void changeLanguage(String langCode)async {
    languageCode = langCode;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
   await prefs.setString("language",languageCode);
    notifyListeners();
  }

  void changeTheme(ThemeMode mode)async {
    themeMode = mode;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool("isDark",mode==ThemeMode.light?false:true);
    notifyListeners();
  }

  String getBackgroundPath() {
    if (themeMode == ThemeMode.light) {
      return "assets/images/default_bg.png";
    } else {
      return "assets/images/dark_bg.png";
    }
  }

  String NameTheme() {
    if (themeMode == ThemeMode.light) {
      return "Light";
    } else {
      return "Dark";
    }
  }

  String NameLanguage() {
    if (languageCode == "ar") {
      return "العربية";
    } else {
      return "English";
    }
  }
}
