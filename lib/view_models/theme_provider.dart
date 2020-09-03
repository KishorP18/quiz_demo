import 'package:akudo_demo/util/shared_pref_const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider with ChangeNotifier{
  ThemeProvider(){
    getAppTheme();
  }

   bool isDarkThemeEnabled=false;



   Future<void> setAppTheme() async{
     SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
     bool val=isDarkThemeEnabled^=true;
     sharedPreferences.setBool(SharedPrefConst.isDarkThemeEnabled,val);
     getAppTheme();
   }

    Future<void> getAppTheme() async{
     SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
     isDarkThemeEnabled=sharedPreferences.getBool(SharedPrefConst.isDarkThemeEnabled)??false;
     notifyListeners();
   }
}