import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



ThemeData darkTheme=ThemeData(
  primarySwatch: Colors.grey,

    primaryColor: Colors.black,

    brightness: Brightness.dark,

    backgroundColor: const Color(0xFF212121),

    accentColor: Colors.white,

    iconTheme: const IconThemeData(
      color: Colors.green,
      
    ),
    dividerColor: Colors.black12,
    buttonTheme: const ButtonThemeData(
      colorScheme: ColorScheme.dark(),
      buttonColor: Color.fromARGB(255, 17, 94, 19),
    ),
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

  ); 

class ThemeModes with ChangeNotifier{
  ThemeMode themeMode = ThemeMode.dark;
  changeThemeMode(bool isLight){
    if(isLight){
      themeMode=ThemeMode.light;
      notifyListeners();
    }
  }
  
}
