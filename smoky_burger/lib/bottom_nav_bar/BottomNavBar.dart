import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smoky_burger/best_seller/best_seller.dart';
import 'package:smoky_burger/profile/profile.dart';
import '../translations/locale_keys.g.dart';

import '../menu/menu_view.dart';
class BottomNavBar extends StatefulWidget {
   BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
   int _currentIndex =0;

  List <Widget> ListOptions=<Widget>[
    MenuView(),
     BestSeller(),
    Profile()

  ];

  @override
  Widget build(BuildContext context) {
  
     return  SafeArea(
       child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: ((index) {
            setState(() {
              _currentIndex=index;
            });
          }),



          items: [
          BottomNavigationBarItem(icon: Icon(Icons.menu),label:LocaleKeys.BottomNavBar_menu.tr()),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label:LocaleKeys.BottomNavBar_bestFoods.tr()),
          BottomNavigationBarItem(icon: Icon(Icons.person),label:LocaleKeys.BottomNavBar_profile.tr())
        ]),
        body: ListOptions.elementAt(_currentIndex),
        
      // ),
       ),
     );
  }
}