import 'package:al_hashmi_market/screens/sigin.dart';
import 'package:al_hashmi_market/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignInUp extends StatefulWidget {
  const SignInUp({ Key? key }) : super(key: key);

  @override
  State<SignInUp> createState() => _SignInUpState();
}

class _SignInUpState extends State<SignInUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
                    actions: [
                      Switch(value: ThemeModes().themeMode==ThemeMode.dark, 
                             onChanged: (isLight){
                               isLight!=isLight;
                               thememodes.changeThemeMode(isLight);
                              }
                      )
                    ]
                  ),
          body: Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
              child: signIn(),
            ),
          ),
        );
  }
}