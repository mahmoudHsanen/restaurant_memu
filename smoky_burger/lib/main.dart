// import 'package:flutter/material.dart';
// //import 'package:smoky_burger/Best_Seller/best_seller.dart';
// //import 'package:smoky_burger/auth/login_view.dart';
// //import 'package:smoky_burger/auth/sign_up_view.dart';
// //import 'package:smoky_burger/menu/menu_view.dart';
// //import 'package:smoky_burger/profile/profile.dart';

// // import 'Best_Seller/best_seller.dart';
// import 'auth/login_view.dart';
// import 'auth/sign_up_view.dart';
// import 'menu/menu_view.dart';
// import 'profile/profile.dart';

// void main (){
//   runApp ( const MyApp());
// }
// class MyApp extends StatelessWidget{
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context){
//     return  MaterialApp(

//    // initialRoute:"/menuview",
//      routes: {
//        "/loginview": (context) => const LoginView(),
//        "/signupview": (context) => const SignUpView(),
//        "/menuview": (context) => const MenuView(),
//       //  '/bestseller': (context) => const BestSeller(),
//        '/profile': (context) => const Profile(),

//      },
//      builder: (context, child) {
//        return GestureDetector(

//         onTap: (){FocusScope.of(context).requestFocus(FocusNode());},child: LoginView(),);
//      },
//     );

//   }
// }

import 'package:flutter/material.dart';


import 'auth/login_view.dart';
 import 'translations/codegen_loader.g.dart';
import 'x.dart';
import 'package:easy_localization/easy_localization.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
     EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ar')],
      path: 'assets/translations', // <-- change the path of the translation files
     fallbackLocale: Locale('en'),
     assetLoader:  CodegenLoader(),
      child: X ()
    ),
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      //  localizationsDelegates: context.localizationDelegates,
      // supportedLocales: context.supportedLocales,
      // locale: context.locale,

      home:  LoginView(),
    );
  }
}
