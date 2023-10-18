import 'package:flutter/material.dart';

class NavigationHelper {
  ///  Navigate to a new screen while removing all the previous screens
  static clearAllAndNavigateTo({
    required BuildContext context,
    required Widget page,
    bool withOutNavBar = false,
  }) {
    Navigator.of(context, rootNavigator: withOutNavBar).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) {
        return page;
      }),
      (_) => false,
    );
  }

  ///  Navigate to a new screen
  static push({
    required BuildContext context,
    required Widget page,
    bool withOutNavBar = false,
  }) {
    Navigator.of(context, rootNavigator: withOutNavBar).push(
      MaterialPageRoute(builder: (context) {
        return page;
      }),
    );
  }
}
