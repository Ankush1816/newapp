import 'package:flutter/material.dart';
import '../../Screen/sign_in/components/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: const Body(),
    );
  }

  AppBar appbar() {
    return AppBar(
      title: const Padding(
        padding: EdgeInsets.only(right: 50),
        child: Center(
          child: Text(
            "Sign In",
            style: TextStyle(
              color: Colors.black54,
              fontFamily: 'Muli',
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}
