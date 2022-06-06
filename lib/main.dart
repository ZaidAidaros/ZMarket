import 'package:al_hashmi_market/modles/user_modle.dart';
import 'package:al_hashmi_market/screens/home/home_p.dart';
import 'package:al_hashmi_market/screens/login/RegisterP.dart';
import 'package:al_hashmi_market/screens/login/register_details_p.dart';
import 'package:al_hashmi_market/screens/login/signin_p.dart';
import 'package:al_hashmi_market/themes/themes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(Start());
}

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeModes>(create: (context) => ThemeModes()),
        ChangeNotifierProvider<UserM>(create: (context) => UserM()),
      ],
      child: Consumer<ThemeModes>(
        builder: ((context, value, child) => MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: value.themeMode,
            theme: lightTheme,
            darkTheme: darkTheme,
            home: Consumer<UserM>(
              builder: ((context, user, child) => isSignIn? Home():SignIn()),
            ))),
      ),
    );
  }
} 
