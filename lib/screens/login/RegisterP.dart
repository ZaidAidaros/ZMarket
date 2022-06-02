import 'package:al_hashmi_market/themes/themes.dart';
import 'package:al_hashmi_market/widgets/input_text.dart';
import 'package:al_hashmi_market/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

bool isDark = true;

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Consumer<ThemeModes>(
        builder: (context, thememo, child) => Scaffold(
          body: Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: double.infinity,
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 50.0,
                  ),
                  InputTextWidgets().inputText(
                      'اسمك', "ادخل اسمك الاول كما في الهويه", (val) {}),
                  const SizedBox(
                    height: 25.0,
                  ),
                  InputTextWidgets().inputText('اسمك الثاني',
                      "ادخل اسمك الثاني كما في الهويه", (val) {}),
                  const SizedBox(
                    height: 25.0,
                  ),
                  InputTextWidgets().inputText('اسمك الثالث',
                      "ادخل اسمك الثالث كما في الهويه", (val) {}),
                  const SizedBox(
                    height: 25.0,
                  ),
                  InputTextWidgets()
                      .inputText('اللقب', "ادخل اللقب كما في الهويه", (val) {}),
                  const SizedBox(
                    height: 25.0,
                  ),
                  InputTextWidgets().inputPhone((val) {}),
                  const SizedBox(
                    height: 25.0,
                  ),
                  InputTextWidgets().inputEmail((val) {}),
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
                        value: isDark,
                        onChanged: (val) {
                          isDark = !isDark;
                          thememo.changeThemeMode(val);
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(child: InputTextWidgets().inputPass((val) {})),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Expanded(child: InputTextWidgets().inputPass((val) {})),
                    ],
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  ElevatedButton(onPressed: (){}, child: const Text('سجلني')),
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
