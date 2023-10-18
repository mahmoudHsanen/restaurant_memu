import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smoky_burger/utils/navigation_helpers.dart';
import 'package:smoky_burger/views/auth/sign_up_view.dart';
import 'package:smoky_burger/views/bottom_nav_bar/BottomNavBar.dart';
import '../../config/app_palette.dart';
import '../../config/app_styles.dart';
import '../../translations/locale_keys.g.dart';

//import 'package:smoky_burger/widgets/base_screen.dart';
class LoginView extends StatelessWidget {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: AppPaddingStyles.screenPadding,
          child: ListView(
            children: [
              Container(
                alignment: Alignment.center,
                height: 55,
                child: Text(LocaleKeys.LoginView_smokyBurger.tr(),
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
                height: 41,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(LocaleKeys.LoginView_email.tr()),
                const SizedBox(height: 8),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60.0)),
                      hintText: "user@gmail.com",
                      suffixIcon: const Icon(Icons.question_mark)),
                  keyboardType: TextInputType.emailAddress,
                ),
              ]),
              const SizedBox(
                height: 11,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(LocaleKeys.LoginView_password.tr()),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(80),
                      ),
                      errorText: LocaleKeys.LoginView_errorPassword.tr(),
                      suffixIcon: const Icon(Icons.question_mark)),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                ),
              ]),
              const Spacer(),
              MaterialButton(
                elevation: 5.0,
                color: AppPalette.greenColor,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  LocaleKeys.LoginView_logIn.tr(),
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
                height: 55,
                minWidth: double.infinity,
              ),
              TextButton(
                  onPressed: () {
                    NavigationHelper.push(context: context, page: SignUpView());
                  },
                  child: Text(LocaleKeys.LoginView_signUp.tr()))
            ],
          ),
        ),
      ),
    );
  }
}
