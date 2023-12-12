import 'package:flutter/material.dart';
import 'package:newapp/Screen/splash/components/body.dart';
import 'package:newapp/constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static String routeName = '/splash';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
