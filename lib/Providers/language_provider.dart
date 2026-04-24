import 'package:flutter/cupertino.dart';

class LanguageProvider extends ChangeNotifier {
  //todo:Data
  Locale appLanguage = Locale('en');

  //todo:FunctionData
  void changeLanguage(Locale newLanguage) {
    if (newLanguage == appLanguage) {
      return;
    }
    appLanguage = newLanguage;
    notifyListeners();
  }
}
