import 'package:al_hashmi_market/api_services/auth.dart';
import 'package:al_hashmi_market/modles/user_modle.dart';
import 'package:al_hashmi_market/screens/login/direc_laung_widget.dart';
import 'package:al_hashmi_market/screens/login/virefy_p.dart';
import 'package:al_hashmi_market/widgets/input_text.dart';
import 'package:al_hashmi_market/widgets/loading_widget.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final GlobalKey<FormState> key = GlobalKey<FormState>();

  TextEditingController textEditingControllerPhone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Arabic(
      child: Scaffold(
        body: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Form(
              key: key,
              child:Column(
                children: [
                  const SizedBox(
                    height: 100.0,
                  ),
                  TextFormField(
                    controller: textEditingControllerPhone,
                    decoration: InputTextWidgets().decoration(
                        'الهاتف', 'ادخل رقم هاتفك هنا',
                        icon: Icons.phone),
                    keyboardType: TextInputType.phone,
                    validator: (val) {
                      if (val!.length >= 9) {
                        return null;
                      } else {
                        return 'الرقم غير صالح';
                      }
                    },
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        bool valid =
                            key.currentState!.validate();
                        if (valid) {
                          AwesomeDialog(context: context, body: loding());
                          UserCredential userCredential;
                          userCredential =
                              await authService.signInWithPhone(textEditingControllerPhone.text);
                          if (userCredential.user!.uid != null) {
                            userM.setUid(userCredential.user!.uid);
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => VirefyP()));
                          } else {
                            AwesomeDialog(
                                context: context, body: showErro(erro));
                          }
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                        ),
                      child: const Text(' سجلني ')),
                  const SizedBox(
                    height: 10.0,
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
