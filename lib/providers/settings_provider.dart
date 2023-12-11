import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier{

  ThemeMode currentTheme=ThemeMode.light;

  //observablePattern

  void changeTheme(ThemeMode newTheme){
    currentTheme=newTheme;
    notifyListeners();
  }
  String getMainBackGroundImage(){
    return currentTheme == ThemeMode.light
                ? 'assets/images/main_background.png'
                : 'assets/images/main_background_dark.png';
  }
  bool isDark(){
    return currentTheme==ThemeMode.dark;
  }
}