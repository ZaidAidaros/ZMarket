import 'package:flutter/material.dart';

class InputTextWidgets {

  
  Widget inputText(
      String label, String hint, Function(String val) onChange) {
    return TextFormField(
      onChanged: onChange,
      decoration: _decoration(label, hint)
    );
  }

  Widget inputEmail(Function(String val) onChange) {
    return TextFormField(
      onChanged: onChange,
      decoration: _decoration('البريد', 'ادخل بريدك الالكتروني هنا')
    );
  }
  Widget inputPhone(Function(String val) onChange) {
    return TextFormField(
      onChanged: onChange,
      decoration: _decoration('الهاتف', 'ادخل رقم هاتفك هنا')
    );
  }

  Widget inputPass(Function(String val) onChange) {
    return TextFormField(
      onChanged: onChange,
      decoration: _decoration('كلمة المرور', "ادخل كلمة المرور هنا"),
      obscureText: true,
    );
  }

  InputDecoration _decoration(String label,String hint){
    return InputDecoration(
          label: Text(label),
          hintText: hint,
          border: const OutlineInputBorder(
            
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            borderSide: BorderSide(
              color: Color.fromARGB(255, 1, 68, 3),
              width: 2.0,
            ),
          ));
  }
}
