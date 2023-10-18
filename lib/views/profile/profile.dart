import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smoky_burger/utils/navigation_helpers.dart';
import 'package:smoky_burger/views/auth/login_view.dart';
import 'package:smoky_burger/translations/locale_keys.g.dart';
import '../../config/app_palette.dart';
import '../../config/app_styles.dart';
import '../bottom_nav_bar/BottomNavBar.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: AppPaddingStyles.screenPadding,
          child: Column(
            children: [
              const SizedBox(
                height: 32,
              ),
              Container(
                alignment: Alignment.center,
                height: 55,
                child: Text("Tomy Jack",
                    style: AppTextStyles.xl(color: AppPalette.balckColor)),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  width: 128,
                  height: 128,
                  child: const CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/Ellipse 94 (1).jpg"),
                  )),
              const SizedBox(
                height: 53,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    LocaleKeys.Profile_language.tr(),
                    style: TextStyle(height: 1, fontSize: 17),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  MaterialButton(
                    elevation: 18.0,
                    color: AppPalette.greenColor,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "English",
                          style: TextStyle(
                            color: AppPalette.whiteColor,
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
                      Navigator.of(context, rootNavigator: false)
                          .pushAndRemoveUntil(
                              MaterialPageRoute(builder: (context) {
                        return BottomNavBar();
                      }), (route) => false);
                      await context.setLocale(Locale('en'));
                    },
                    height: 50,
                    minWidth: double.infinity,
                  ),
                ],
              ),
              const SizedBox(
                height: 37,
              ),
              MaterialButton(
                color: AppPalette.greenColor,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      LocaleKeys.Profile_arabic.tr(),
                      style: TextStyle(
                        color: AppPalette.whiteColor,
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
                onPressed: () async {
                  Navigator.of(context, rootNavigator: false)
                      .pushAndRemoveUntil(MaterialPageRoute(builder: (context) {
                    return BottomNavBar();
                  }), (route) => false);
                  await context.setLocale(Locale('ar'));
                },
                height: 50,
                minWidth: double.infinity,
              ),
              Spacer(),
              SizedBox(),
              Material(
                child: MaterialButton(
                  color: AppPalette.greenColor,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  elevation: 0,
                  child: Text(
                    LocaleKeys.Profile_logOut.tr(),
                    style:
                        TextStyle(color: AppPalette.whiteColor, fontSize: 22),
                  ),
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  onPressed: () {
                    NavigationHelper.push(context: context, page: LoginView());
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
