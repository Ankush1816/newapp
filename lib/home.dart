import 'package:flutter/material.dart';
import 'package:newapp/Screen/splash/splash_screen.dart';
import 'package:newapp/rout.dart';
import 'package:newapp/theme.dart';

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme(),
        // home: SplashScreen()
        routes: routs,
        initialRoute: SplashScreen.routeName);
  }
}
