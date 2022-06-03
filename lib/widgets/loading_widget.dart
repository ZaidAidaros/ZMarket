import 'dart:math';

import 'package:flutter/material.dart';

Widget loding() {
  return Card(
    child: Center(
      child: CircularProgressIndicator(),
    ),
  );
}

Widget showErro(String erro){
  return Card(child: Text(erro),);
}
