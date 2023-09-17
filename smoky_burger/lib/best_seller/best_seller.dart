// import 'dart:io';
// import 'dart:typed_data';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smoky_burger/translations/locale_keys.g.dart';

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
          padding: EdgeInsets.only(left: 1.9, right: 1.9, top: 20, bottom: 50),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 55,
                child: Text(
                  LocaleKeys.BestSeller_bestSeller.tr(),
                  style: TextStyle(
                      fontSize: 55,
                      fontWeight: FontWeight.w900,
                      letterSpacing: -0.035,
                      height: 1),
                ),
              ),
              Expanded(
                child: ListView.builder(
                    padding: EdgeInsets.only(top: 50, left: 1.9, right: 1.9),
                    shrinkWrap: true,
                    itemCount: widget.bestfood.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                          child: Container(
                              // decoration: BoxDecoration(
                              //   borderRadius: BorderRadius.circular(50),
                              //   color: Colors.grey[100],
                              // ),
                              height: 77,
                              width: 30,
                              alignment: Alignment.center,
                              child: ListTile(
                                trailing: Column(
                                  children: [
                                    Text(counter.toString()),
                                    isLike[index]
                                        ? Icon(
                                            Icons.favorite,
                                          )
                                        : Icon(Icons.favorite,
                                            color: Colors.red),
                                  ],
                                ),

                                onTap: () {
                                  isLike[index] = !isLike[index];
                                  print("$counter");
                                  setState(() {
                                    // widget.bestfood[index]["isLike"] = true;
                                    counter == 0 ? counter++ : counter--;
                                  });
                                },
                                // widget.bestfood[index]["icon"]:widget.bestfood[index]["icon"])

                                // color: click? Colors.grey[500]:Colors.red,

                                title: Text(
                                  widget.bestfood[index]["burgername"]
                                      .toString(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
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
