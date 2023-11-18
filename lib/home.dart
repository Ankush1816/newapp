import 'package:flutter/material.dart';
import 'package:newapp/Screen/splash/splash_screen.dart';
import 'package:newapp/constants.dart';
import 'package:newapp/rout.dart';

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Muli',
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: kTextColor),
          bodyMedium: TextStyle(color: kTextColor),
        ),
      ),
      // home: const SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routs,
    );
  }
}
