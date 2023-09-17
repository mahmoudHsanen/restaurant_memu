import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smoky_burger/bottom_nav_bar/BottomNavBar.dart';
import 'package:smoky_burger/translations/locale_keys.g.dart';


// import 'package:smoky_burger/menu/menu_view.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Padding(
          padding: EdgeInsets.only(left: 23, right: 23, top: 11, bottom: 50),
          child:  ListView(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 55,
                  child:  Text(
                   LocaleKeys.signUpView_smokyBurger.tr(),
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w900,
                        letterSpacing: -0.035,
                        height: 1),
                  ),
                ),
                SizedBox(
                  height: 11,
                ),
                ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      "assets/images/closeup-up-isolated-smokey-burger-with-american-cheese-pickles-wooden-plate_432236-807 1 (1).jpg",
                      width: 260,
                      height: 180,
                    )),
                SizedBox(
                  height: 22,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(LocaleKeys.signUpView_fullName.tr()),
                    SizedBox(
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
          
                SizedBox(
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
          
                SizedBox(
                  height: 11,
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(LocaleKeys.signUpView_password.tr()),
                  SizedBox(
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
                SizedBox(
                  height: 11,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(LocaleKeys.signUpView_confirmPassword.tr()),
                    SizedBox(
                      height: 8,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(80)),
                          errorText: LocaleKeys.signUpView_errorPassword.tr(),
                          suffixIcon: Icon(Icons.question_mark)),
                      keyboardType: TextInputType.visiblePassword,obscureText: true,
                    )
                  ],
                ),
                Spacer(),
                MaterialButton(
                  elevation: 0.0,
                  color: Colors.green,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    LocaleKeys.signUpView_signUp.tr(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                  shape:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BottomNavBar()));
                    //right way: use context in below level tree with MaterialApp
                  },
                  height: 50,
                  minWidth: double.infinity,
                ),
          
                //  Text("sadasddsa")
              ],
            ),
          
        ),
      ),
    );
  }
}
