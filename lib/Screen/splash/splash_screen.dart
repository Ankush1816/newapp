// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:newapp/Screen/components/body.dart';
import 'package:newapp/constants.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
