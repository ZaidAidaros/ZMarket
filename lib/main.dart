
import 'package:al_hashmi_market/modles/user_modle.dart';
import 'package:al_hashmi_market/screens/first_page.dart';
import 'package:al_hashmi_market/screens/sign_page.dart';
import 'package:al_hashmi_market/themes/themes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  

  runApp(Start());
}


class Start extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeModes(),
      child: Consumer<ThemeModes>(
        builder: (context,thememodes,child){
          return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: thememodes.themeMode,
          theme: lightTheme,
          darkTheme: darkTheme,
          home: SignInUp(),
        );
        }
      ),
    );
  }
  
}