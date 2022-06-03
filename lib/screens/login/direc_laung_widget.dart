import 'package:flutter/material.dart';

class Arabic extends StatelessWidget {
 final Widget child;
  const Arabic({ required this.child,Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection:  TextDirection.rtl, child: child);
  }
}