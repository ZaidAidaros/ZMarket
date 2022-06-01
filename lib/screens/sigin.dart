

import 'package:flutter/material.dart';

Widget signIn(){
  return Form(
    child: Column(
      children: [
        const SizedBox(height: 25.0,width: double.infinity,),
        TextFormField(
          onChanged: ((value) {}),
        ),
        const SizedBox(height: 15.0,),
        TextFormField(
        ),
        const SizedBox(height: 20.0,),
        const SizedBox(height: 20.0,),

      ],
    ),
  );
}