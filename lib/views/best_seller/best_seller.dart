// import 'dart:io';
// import 'dart:typed_data';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smoky_burger/translations/locale_keys.g.dart';

import '../../config/app_palette.dart';
import '../../config/app_styles.dart';

// ignore: must_be_immutable
class BestSeller extends StatefulWidget {
  BestSeller({super.key});
  var bestfood = [
    {
      "image": "assets/images/Rectangle 3.jpg",
      "burgername": LocaleKeys.BestSeller_cheeseBurger.tr(),
    },
    {
      "image": "assets/images/Rectangle 7.jpg",
      "burgername": LocaleKeys.BestSeller_smokyBurger.tr(),
    },
    {
      "image": "assets/images/Rectangle 9.jpg",
      "burgername": LocaleKeys.BestSeller_doubleBurger.tr(),
    },
    {
      "image": "assets/images/Rectangle 10.jpg",
      "burgername": LocaleKeys.BestSeller_greenBurger.tr(),
    },
  ];

  @override
  State<BestSeller> createState() => _BestSellerState();
}

class _BestSellerState extends State<BestSeller> {
  int counter = 0;
  List<bool> isLike = [true, true, true, true, true];

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

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
                child: Text(LocaleKeys.BestSeller_bestSeller.tr(),
                    style: AppTextStyles.xl(color: AppPalette.balckColor)
                    //  TextStyle(
                    //     fontSize: 55,
                    //     fontWeight: FontWeight.w900,
                    //     letterSpacing: -0.035,
                    //     height: 1),
                    ),
              ),
              Expanded(
                child: ListView.builder(
                    padding:
                        const EdgeInsets.only(top: 50, left: 1.9, right: 1.9),
                    shrinkWrap: true,
                    itemCount: widget.bestfood.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                          child: Container(
                              height: 77,
                              width: 30,
                              alignment: Alignment.center,
                              child: ListTile(
                                trailing: Column(
                                  children: [
                                    Text(counter.toString()),
                                    isLike[index]
                                        ? const Icon(
                                            Icons.favorite,
                                          )
                                        : const Icon(Icons.favorite,
                                            color: AppPalette.redColor),
                                  ],
                                ),
                                onTap: () {
                                  isLike[index] = !isLike[index];
                                  print("$counter");
                                  setState(() {
                                    counter == 0 ? counter++ : counter--;
                                  });
                                },
                                title: Text(
                                  widget.bestfood[index]["burgername"]
                                      .toString(),
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w900,
                                    letterSpacing: -0.035,
                                    height: 1,
                                  ),
                                ),
                                leading: CircleAvatar(
                                  backgroundImage: AssetImage(widget
                                      .bestfood[index]["image"]
                                      .toString()),
                                ),
                              )));
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
