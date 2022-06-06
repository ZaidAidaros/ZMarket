import 'package:al_hashmi_market/api_services/auth.dart';
import 'package:al_hashmi_market/constants_variables.dart';
import 'package:al_hashmi_market/modles/user_modle.dart';
import 'package:al_hashmi_market/screens/login/direc_laung_widget.dart';
import 'package:al_hashmi_market/screens/login/virefy_p.dart';
import 'package:al_hashmi_market/widgets/input_text.dart';
import 'package:al_hashmi_market/widgets/loading_widget.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:country_list_pick/country_list_pick.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final GlobalKey<FormState> key = GlobalKey<FormState>();

  TextEditingController textEditingControllerPhone = TextEditingController();
  String countryKey = '+967';

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
              child: Column(
                children: [
                  const SizedBox(
                    height: 100.0,
                  ),
                  Row(
                    children: [
                      CountryListPick(
                          appBar: AppBar(
                            backgroundColor:const Color.fromARGB(255, 0, 77, 139),
                            title: const Text('Chose your country'),
                          ),
                          theme: CountryTheme(
                            isShowFlag: true,
                            isShowTitle: true,
                            isShowCode: true,
                            isDownIcon: true,
                            showEnglishName: false,
                          ),
                          // Set default value
                          initialSelection: '+62',
                          // or
                          // initialSelection: 'US'

                          // Whether to allow the widget to set a custom UI overlay
                          useUiOverlay: true,
                          // Whether the country list should be wrapped in a SafeArea
                          useSafeArea: false),
                      Expanded(
                        flex: 3,
                        child: TextFormField(
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
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        bool valid = key.currentState!.validate();
                        if (valid) {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => VirefyP(countryKey +
                                      textEditingControllerPhone.text)));
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

  DropdownMenuItem<String> menuItem(String item) => DropdownMenuItem(
        child: Text(item),
        value: item,
      );
}
