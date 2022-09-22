import 'package:flutter/material.dart';

class MyProvider with ChangeNotifier{

  bool switchValue = false ;
  ThemeMode tm = ThemeMode.light;

  void changeMode(bool value )
  {
     switchValue  = value;
     notifyListeners();

      if(switchValue == false )
      {
        tm  = ThemeMode.light;

      }
      else
      {
       tm = ThemeMode.dark;

      }
  }
}