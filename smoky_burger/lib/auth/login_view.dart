import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smoky_burger/auth/sign_up_view.dart';
import 'package:smoky_burger/bottom_nav_bar/BottomNavBar.dart';
import '../translations/locale_keys.g.dart';

//import 'package:smoky_burger/widgets/base_screen.dart';
class LoginView extends StatelessWidget {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.only(left: 23, right: 23, top: 11, bottom: 50),
          child: ListView(
            children: [
              Container(
                alignment: Alignment.center,
                height: 55,
                child: Text(
                  LocaleKeys.LoginView_smokyBurger.tr(),
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
                height: 41,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(LocaleKeys.LoginView_email.tr()),
                SizedBox(height: 8),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60.0)),
                      hintText: "user@gmail.com",
                      suffixIcon: Icon(Icons.question_mark)),
                  keyboardType: TextInputType.emailAddress,
                ),
              ]),

              SizedBox(
                height: 11,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(LocaleKeys.LoginView_password.tr()),
                SizedBox(
                  height: 8,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(80),
                      ),
                      errorText: LocaleKeys.LoginView_errorPassword.tr(),
                      suffixIcon: Icon(Icons.question_mark)),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                ),
              ]),
              Spacer(),
              MaterialButton(
                elevation: 5.0,
                color: Colors.green,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  LocaleKeys.LoginView_logIn.tr(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
                shape:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                onPressed: () {
                  //right way: use context in below level tree with MaterialApp
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BottomNavBar()));
                },
                height: 55,
                minWidth: double.infinity,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUpView()));
                  },
                  child: Text(LocaleKeys.LoginView_signUp.tr()))
              //  Text("sadasddsa")
            ],
          ),
        ),
      ),
    );
    // return SafeArea(
    //   child: Scaffold(
    //     body: Container(
    //       width: 208,
    //       height: 55,
    //       alignment: Alignment.center,
    //       margin: EdgeInsets.only(top: 55, left: 82),

    //       child: Column(
    //        // mainAxisAlignment: MainAxisAlignment.start,
    //       //  crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [

    //           Text(
    //             "Smoky Burger",
    //             style: TextStyle(
    //                 fontSize: 32,
    //                 fontWeight: FontWeight.w900,
    //         //        fontFamily: 'Roboto',
    //                 letterSpacing: -0.035,
    //                 height: 1),textAlign: TextAlign.center,
    //           ),
    //           Image.network('https://img.freepik.com/premium-photo/closeup-up-isolated-smokey-burger-with-american-cheese-pickles-wooden-plate_432236-807.jpg?w=1380',height: 163,width: 260,)
    //         ],
    //       ),
    //     ),
    //   ),
    // );
    // return BaseScreen(tilte: "Smokey burger", child: Column(children: [

    // return BaseScreen(tilte: "Smokey burger", child: Column(children: [

    // ],))
  }
}
// font-family: Roboto;
// font-size: 32px;
// font-weight: 900;
// line-height: 15px;
// letter-spacing: -0.035em;
// text-align: center;
// width: 208px
// height: 55px
// top: 55px
// left: 82px

// width: 260.00006198883057px
// height: 163.0000388622284px
// top: 121px
// left: 54px
// border-radius: 50px
