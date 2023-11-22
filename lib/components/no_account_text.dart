import 'package:flutter/material.dart';
import 'package:newapp/Screen/sign_up/sign_up_screen.dart';
// import 'package:newapp/screens/sign_in/sign_up/sign_up_screen.dart';

import '../constants.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don’t have an account? ",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(16),
            color: Colors.black,
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
          child: Text(
            "Sign Up",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16), color: Colors.black),
          ),
        ),
      ],
    );
  }
}
