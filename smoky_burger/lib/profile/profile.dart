// import 'dart:convert';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smoky_burger/auth/login_view.dart';
//  import 'package:smoky_burger/best_seller/best_seller.dart';
import 'package:smoky_burger/translations/locale_keys.g.dart';
import '../bottom_nav_bar/BottomNavBar.dart';
// import 'package:smoky_burger/x.dart';
// import '../menu/menu_view.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 23, right: 23, top: 11, bottom: 50),
          child: Column(
            children: [
              SizedBox(
                height: 32,
              ),
              Container(
                alignment: Alignment.center,
                height: 55,
                child: Text(
                  "Tomy Jack",
                  style: TextStyle(
                      fontSize: 55,
                      fontWeight: FontWeight.w900,
                      letterSpacing: -0.035,
                      height: 1),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  width: 128,
                  height: 128,
                  child: CircleAvatar(
                    // radius: 70,
                    backgroundImage: AssetImage("assets/images/Ellipse 94 (1).jpg"),
                  )),
              SizedBox(
                height: 53,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                   LocaleKeys.Profile_language.tr(),
                    style: TextStyle(height: 1, fontSize: 17),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  MaterialButton(
                    elevation: 18.0,
                    color: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "English",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/Component 1.jpg"),
                        )
                      ],
                    ),
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    onPressed: () async {
                     Navigator.of(context,rootNavigator: false).pushAndRemoveUntil(MaterialPageRoute(builder:  (context){
                  return BottomNavBar();
                }), (route) => false);
                  await context.setLocale(Locale('en'));
                    },
                    height: 50,
                    minWidth: double.infinity,
                  ),
                ],
              ),
              SizedBox(
                height: 37,
              ),
              MaterialButton(
                color: Colors.green,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      LocaleKeys.Profile_arabic.tr(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(
                      width: 27,
                    ),
                    CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/Component 1 (1).jpg"),
                    )
                  ],
                ),
                shape:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                onPressed: () async {Navigator.of(context,rootNavigator: false).pushAndRemoveUntil(MaterialPageRoute(builder:  (context){
                  return  BottomNavBar ();
                }), (route) => false);
                  await context.setLocale(Locale('ar'));},
                height: 50,
                minWidth: double.infinity,
              ),
              Spacer(),
              SizedBox(),
              Material(
                child: MaterialButton(
                  color: Colors.green,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  elevation: 0,
                  child: Text(
                   LocaleKeys.Profile_logOut.tr(),
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginView()));
                  },
                  height: 50,
                  minWidth: double.infinity,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
