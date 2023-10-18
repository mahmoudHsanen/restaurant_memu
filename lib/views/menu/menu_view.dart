import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smoky_burger/config/app_palette.dart';
import '../../config/app_styles.dart';
import '../../translations/locale_keys.g.dart';

// ignore: must_be_immutable
class MenuView extends StatefulWidget {
  MenuView({super.key});

  var menuDetailsa = [
    {
      "image": "assets/images/Rectangle 3.jpg",
      "burger_price": "3.6 \$ ",
      "burger_name": LocaleKeys.MenuView_cheeseBurger.tr(),
      "burger_detils": LocaleKeys.MenuView_detilsCheeseBurger.tr(),
    },
    {
      "image": "assets/images/Rectangle 4.jpg",
      "burger_price": "2.4 \$ ",
      "burger_name": LocaleKeys.MenuView_smachBurger.tr(),
      "burger_detils": LocaleKeys.MenuView_detilsSmachBurger.tr()
    },
    {
      "image": "assets/images/Rectangle 5.jpg",
      "burger_price": "3 \$ ",
      "burger_name": LocaleKeys.MenuView_smokyBurger.tr(),
      "burger_detils": LocaleKeys.MenuView_detilsSmokyBurger.tr()
    },
    {
      "image": "assets/images/Rectangle 6.jpg",
      "burger_price": "1.90 \$ ",
      "burger_name": LocaleKeys.MenuView_chiliBurger.tr(),
      "burger_detils": LocaleKeys.MenuView_detilsChiliBurger.tr()
    },
    {
      "image": "assets/images/Rectangle 7.jpg",
      "burger_price": "6.5 \$ ",
      "burger_name": LocaleKeys.MenuView_meatBuger.tr(),
      "burger_detils": LocaleKeys.MenuView_detilsMeatBuger.tr()
    },
    {
      "image": "assets/images/Rectangle 8.jpg",
      "burger_price": "7 \$ ",
      "burger_name": LocaleKeys.MenuView_barbecueBurger.tr(),
      "burger_detils": LocaleKeys.MenuView_detilsBarbecueBurger.tr()
    },
    {
      "image": "assets/images/Rectangle 9.jpg",
      "burger_price": "2 \$ ",
      "burger_name": LocaleKeys.MenuView_DoubleBurger.tr(),
      "burger_detils": LocaleKeys.MenuView_detilsDoubleBurger.tr()
    },
    {
      "image": "assets/images/Rectangle 10.jpg",
      "burger_price": "5 \$ ",
      "burger_name": LocaleKeys.MenuView_GreenBurger.tr(),
      "burger_detils": LocaleKeys.MenuView_detilsGreenBurger.tr()
    },
  ];
  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
            padding: AppPaddingStyles.screenPadding,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 55,
                  child: Text(LocaleKeys.MenuView_menu.tr(),
                      style: AppTextStyles.xl(color: AppPalette.balckColor)),
                ),
                SizedBox(height: 25),
                Flexible(
                  child: GridView.builder(
                    itemCount: widget.menuDetailsa.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                    ),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return Container(
                                    child: Column(
                                  children: [
                                    AlertDialog(
                                      title: Center(
                                          child: Text(
                                        widget.menuDetailsa[index]
                                            ["burger_name"]!,
                                        style: const TextStyle(
                                          fontSize: 32,
                                          fontWeight: FontWeight.w900,
                                          letterSpacing: -0.035,
                                          height: 1,
                                        ),
                                      )),
                                      content: Image(
                                          image: AssetImage(
                                        widget.menuDetailsa[index]["image"]!,
                                      )),
                                      actions: [
                                        Text(
                                          widget.menuDetailsa[index]
                                              ["burger_detils"]!,
                                          style: const TextStyle(
                                            fontSize: 32,
                                            fontWeight: FontWeight.w900,
                                            letterSpacing: -0.035,
                                            height: 1,
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.bottomRight,
                                          child: Text(
                                              widget.menuDetailsa[index]
                                                  ["burger_price"]!,
                                              style: const TextStyle(
                                                fontSize: 32,
                                                fontWeight: FontWeight.w900,
                                                letterSpacing: -0.035,
                                                height: 1,
                                              )),
                                        )
                                      ],
                                    )
                                  ],
                                ));
                              });
                        },
                        child: Container(
                          alignment: Alignment.bottomRight,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              image: DecorationImage(
                                  image: AssetImage(
                                    widget.menuDetailsa[index]["image"]!,
                                  ),
                                  fit: BoxFit.cover)),
                          child: Text(
                            widget.menuDetailsa[index]["burger_price"]!,
                            style: const TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w900,
                              letterSpacing: -0.035,
                              height: 1,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            )),
      ),
    );
  }
}
