import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smoky_burger/utils/navigation_helpers.dart';
import 'package:smoky_burger/views/bottom_nav_bar/BottomNavBar.dart';
import 'package:smoky_burger/translations/locale_keys.g.dart';

import '../../config/app_palette.dart';
import '../../config/app_styles.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Padding(
          padding: AppPaddingStyles.screenPadding,
          child: ListView(
            children: [
              Container(
                alignment: Alignment.center,
                height: 55,
                child: Text(LocaleKeys.signUpView_smokyBurger.tr(),
                    style: AppTextStyles.xl(color: AppPalette.balckColor)),
              ),
              const SizedBox(
                height: 11,
              ),
              ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    "assets/images/closeup-up-isolated-smokey-burger-with-american-cheese-pickles-wooden-plate_432236-807 1 (1).jpg",
                    width: 260,
                    height: 180,
                  )),
              const SizedBox(
                height: 22,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(LocaleKeys.signUpView_fullName.tr()),
                  const SizedBox(
                    height: 8,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(60.0)),
                        hintText: "Tomy jack",
                        suffixIcon: Icon(Icons.question_mark)),
                    keyboardType: TextInputType.name,
                  ),
                ],
              ),
              const SizedBox(
                height: 11,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(LocaleKeys.signUpView_email.tr()),
                SizedBox(height: 8),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60.0)),
                      hintText: "Tomy jack",
                      suffixIcon: Icon(Icons.question_mark)),
                  keyboardType: TextInputType.emailAddress,
                ),
              ]),
              const SizedBox(
                height: 11,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(LocaleKeys.signUpView_password.tr()),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(80),
                      ),
                      suffixIcon: Icon(Icons.question_mark)),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                ),
              ]),
              const SizedBox(
                height: 11,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(LocaleKeys.signUpView_confirmPassword.tr()),
                  const SizedBox(
                    height: 8,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(80)),
                        errorText: LocaleKeys.signUpView_errorPassword.tr(),
                        suffixIcon: Icon(Icons.question_mark)),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                  )
                ],
              ),
              Spacer(),
              MaterialButton(
                elevation: 0.0,
                color: AppPalette.greenColor,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  LocaleKeys.signUpView_signUp.tr(),
                  style: TextStyle(
                    color: AppPalette.whiteColor,
                    fontSize: 22,
                  ),
                ),
                shape:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                onPressed: () {
                  NavigationHelper.push(context: context, page: BottomNavBar());
                },
                height: 50,
                minWidth: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
