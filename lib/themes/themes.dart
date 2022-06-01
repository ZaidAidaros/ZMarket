import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



ThemeData darkTheme=ThemeData(
  primarySwatch: Colors.grey,

    primaryColor: Colors.black,

    brightness: Brightness.dark,

    backgroundColor: Color.fromARGB(255, 148, 10, 10),

    accentColor: Colors.white,

    iconTheme: const IconThemeData(
      color: Colors.green,
      
    ),
    dividerColor: Colors.black12,
    buttonTheme: const ButtonThemeData(
      colorScheme: ColorScheme.dark(),
      buttonColor: Color.fromARGB(255, 17, 94, 19),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border:OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      ),
      focusColor: Color.fromARGB(255, 206, 100, 1),
      iconColor: Color.fromARGB(255, 160, 204, 0),
      fillColor: Color.fromARGB(255, 1, 63, 114),
      
    )
);


ThemeData lightTheme = ThemeData(

    primarySwatch: Colors.grey,

    primaryColor: Colors.white,

    brightness: Brightness.light,

    backgroundColor: const Color(0xFFE5E5E5),

    accentColor: Colors.black,
    dividerColor: Colors.white54,
    iconTheme: const IconThemeData(
      color: Colors.green,
    ),
    buttonTheme: const ButtonThemeData(
      colorScheme: ColorScheme.dark(),
      buttonColor: Color.fromARGB(255, 17, 94, 19),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border:OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      ),
      focusColor: Color.fromARGB(255, 206, 100, 1),
      iconColor: Color.fromARGB(255, 160, 204, 0),
      fillColor: Color.fromARGB(255, 1, 63, 114),
      

    )
  ); 

class ThemeModes with ChangeNotifier{
  var themeMode = ThemeMode.dark;
  changeThemeMode(bool isDark){
    if(isDark){
      themeMode=ThemeMode.light;
    }else{
      themeMode=ThemeMode.dark;
    }
    notifyListeners();
  }
  
}
