import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../api_services/auth.dart';

class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.percent), label: Text("vsvs")),
        ],
      ),
      body: Container(),
    );
  }
  
}
