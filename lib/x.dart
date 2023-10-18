import 'package:flutter/material.dart';
import 'views/auth/login_view.dart';
import 'package:easy_localization/easy_localization.dart';

class X extends StatelessWidget {
  const X({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: LoginView(),
    );
  }
}
///