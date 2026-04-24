
import 'package:flutter/material.dart';
import 'package:momento/utils/app_theme.dart';

class ThemeProvider extends ChangeNotifier {
  //todo:Data
  ThemeMode appTheme= ThemeMode.light;

  //todo:FunctionData
  void changeTheme(ThemeMode newTheme) {
    if (newTheme == appTheme) {
      return;
    }
    appTheme = newTheme;
    notifyListeners();
  }


  bool isDarkMode () {
    return appTheme == ThemeMode.dark;
  }
  bool get isDark => appTheme == ThemeMode. dark ;
}
