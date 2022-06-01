import 'package:al_hashmi_market/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import '../api_services/auth.dart';

bool isLight =false;
class FirstPage extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          Switch(value: isLight, onChanged: (isLight){
            ThemeModes().changeThemeMode(isLight);
          }),
        ],
      ),
      body: Container(),
    );
  }
  
}
