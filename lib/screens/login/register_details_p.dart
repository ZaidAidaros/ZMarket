import 'dart:html';

import 'package:al_hashmi_market/screens/login/direc_laung_widget.dart';
import 'package:al_hashmi_market/widgets/input_text.dart';
import 'package:al_hashmi_market/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class RegisterDetialsP extends StatefulWidget {
  @override
  State<RegisterDetialsP> createState() => RegisterDetialsPState();
}

class RegisterDetialsPState extends State<RegisterDetialsP> {
  bool isHaveCom = false;
  final GlobalKey<FormState> key = GlobalKey<FormState>();
  TextEditingController textEditingControllerFN = TextEditingController();
  TextEditingController textEditingControllerSecN = TextEditingController();
  TextEditingController textEditingControllerLN = TextEditingController();
  TextEditingController textEditingControllerFaN = TextEditingController();
  TextEditingController textEditingControllerCN = TextEditingController();
  TextEditingController textEditingControllerDC = TextEditingController();
  TextEditingController textEditingControllerEmail = TextEditingController();
  TextEditingController textEditingControllerPass = TextEditingController();

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
                      height: 50.0,
                    ),
                    TextFormField(
                      controller: textEditingControllerFN,
                      decoration: InputTextWidgets()
                          .decoration('اسمك', "ادخل اسمك الاول كما في الهويه"),
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    TextFormField(
                      controller: textEditingControllerSecN,
                      decoration: InputTextWidgets().decoration(
                          'اسمك الثاني', "ادخل اسمك الثاني كما في الهويه"),
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    TextFormField(
                      controller: textEditingControllerLN,
                      decoration: InputTextWidgets().decoration(
                          'اسمك الثالث', "ادخل اسمك الثالث كما في الهويه"),
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    TextFormField(
                      controller: textEditingControllerFaN,
                      decoration: InputTextWidgets()
                          .decoration('اللقب', "ادخل اللقب كما في الهويه"),
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    TextFormField(
                      controller: textEditingControllerEmail,
                      decoration: InputTextWidgets().decoration(
                          'البريد', 'ادخل بريدك الالكتروني هنا',
                          icon: Icons.email),
                      validator: (val) {
                        if (val!.contains('.') && val.contains('@')) {
                          return null;
                        } else {
                          return 'ادخل بريد صالح';
                        }
                      },
                      //validator: validateEmail(e),
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ShowTextWidgets().showText('هل انت مقدم خدمة'),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Switch(
                          value: isHaveCom,
                          onChanged: (val) {
                            setState(() {
                              isHaveCom = !isHaveCom;
                            });
                          },
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    Container(
                      child: isHaveCom
                          ? Container(
                              padding: const EdgeInsets.all(15.0),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    TextFormField(
                                      controller: textEditingControllerCN,
                                      decoration: InputTextWidgets().decoration(
                                          'اسم الشركه ',
                                          "ادخل اسم الشركه او العمل"),
                                    ),
                                    const SizedBox(
                                      height: 25.0,
                                    ),
                                    TextFormField(
                                      controller: textEditingControllerDC,
                                      decoration: InputTextWidgets().decoration(
                                        'صف الخدمه اللتي تقدمها',
                                        "وصف الشركه او العمل",
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 25.0,
                                    ),
                                    // image of comp picker and show
                                  ],
                                ),
                              ),
                            )
                          : const SizedBox(
                              height: 10.0,
                            ),
                    ),
                    SizedBox(
                      height: 50.0,
                      width: 200.0,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text("حفظ"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                        ),
                      ),
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
