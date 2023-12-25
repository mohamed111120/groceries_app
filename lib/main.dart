import 'package:flutter/material.dart';
import 'package:groceries_app/views/auth/login.dart';
import 'package:groceries_app/views/auth/sign_up.dart';
import 'package:groceries_app/views/home/homeLayout.dart';
import 'package:groceries_app/views/onpording/onbording.dart';
import 'package:groceries_app/views/product_details/product_details.dart';
import 'package:groceries_app/views/splash/splach.dart';

void main() {
  runApp(const GroceriesApp());
}

class GroceriesApp extends StatelessWidget {
  const GroceriesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        SplachScreen.id:(context) => SplachScreen(),
        OnbordingScreen.id:(context) => OnbordingScreen(),
        LoginScreen.id :(context) => LoginScreen(),
        SignUpScreen.id :(context) => SignUpScreen(),
        HomeLayout.id :(context) => HomeLayout(),
        ProiductDetails.id :(context) => ProiductDetails(),



      },
      initialRoute: SplachScreen.id,

    );
  }
}
