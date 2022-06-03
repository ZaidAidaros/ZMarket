import 'dart:async';

import 'package:al_hashmi_market/modles/user_modle.dart';
import 'package:al_hashmi_market/screens/home/home_p.dart';
import 'package:al_hashmi_market/screens/login/direc_laung_widget.dart';
import 'package:al_hashmi_market/widgets/input_text.dart';
import 'package:flutter/material.dart';

class VirefyP extends StatefulWidget {
  const VirefyP({Key? key}) : super(key: key);

  @override
  State<VirefyP> createState() => _VirefyPState();
}

class _VirefyPState extends State<VirefyP> {
  final GlobalKey<FormState> key = GlobalKey<FormState>();
  TextEditingController textEditingControllerNumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Arabic(
      child: Scaffold(
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(25.0),
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Form(
              key: key,
              child: Column(
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  TextFormField(
                    controller: textEditingControllerNumber,
                    decoration: InputTextWidgets().decoration(
                        'الكود', 'ادخل الكود هنا',
                        icon: Icons.code),
                    keyboardType: TextInputType.number,
                    validator: (val) {
                      if (val!.length == 6) {
                        return null;
                      } else {
                        return 'الكود غير صالح';
                      }
                    },
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (key.currentState!.validate()) {
                        
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => Home()));
                      }
                    },
                    child: const Text('  تاكيد  '),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text("لم يصل كود التاكيد, اعد ارساله")),
                  const SizedBox(
                    height: 30.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
