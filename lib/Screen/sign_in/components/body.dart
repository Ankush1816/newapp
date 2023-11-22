import 'package:flutter/material.dart';
import 'package:newapp/Screen/sign_in/components/sign_form.dart';
import 'package:newapp/components/social_card.dart';
import 'package:newapp/constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight! * 0.04),
              Text(
                "Welcome Back",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              const Text(
                  "Sign in with your email and password \nor continue with social media",
                  style: TextStyle(color: Colors.black),
                  textAlign: TextAlign.center),
              SizedBox(height: SizeConfig.screenHeight! * 0.08),
              SignForm(),
              SizedBox(height: SizeConfig.screenHeight! * 0.08),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SocialCard(
                    iconSrc: "assets/icons/google-icon.svg",
                    press: () {},
                  ),
                  SocialCard(
                    iconSrc: "assets/icons/facebook-2.svg",
                    press: () {},
                  ),
                  SocialCard(
                    iconSrc: "assets/icons/twitter.svg",
                    press: () {},
                  )
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.black),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                          color: kPrimaryColor, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
