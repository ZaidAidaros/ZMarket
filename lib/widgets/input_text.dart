import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class InputTextWidgets {
  
  

  
  


  InputDecoration decoration(String label, String hint, {IconData? icon}) {
    return InputDecoration(
        prefix: Icon(icon),
        label: Text(label),
        hintText: hint,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          borderSide: BorderSide(
            color: Color.fromARGB(255, 1, 68, 3),
          ),
        ));
  }
}
