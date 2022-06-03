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

    primaryColor: Color.fromARGB(255, 231, 230, 230),

    brightness: Brightness.light,

    backgroundColor: Color.fromARGB(255, 223, 221, 221),
    elevatedButtonTheme: const ElevatedButtonThemeData(style: ButtonStyle(
      alignment: Alignment.center,
      
    )),

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

class ThemeModes extends ChangeNotifier{
  ThemeMode themeMode = ThemeMode.dark;
  void changeThemeMode(bool isDark){
    if(isDark){
      print(isDark);
      themeMode=ThemeMode.dark;
    }else{
      print(isDark);
      themeMode=ThemeMode.light;
    }
    notifyListeners();
  }
  
}
