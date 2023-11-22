import 'package:flutter/material.dart';
import 'package:newapp/Screen/complete_profile/complete_profile_screen.dart';
import 'package:newapp/Screen/details/details_screen.dart';
import 'package:newapp/Screen/forgot_password/forgot_password_screen.dart';
import 'package:newapp/Screen/login_success/login_success_screen.dart';
// import 'package:newapp/Screen/product_details/pro_det_screen.dart';
import 'package:newapp/Screen/sign_in/sign_in_page.dart';
import 'package:newapp/Screen/splash/splash_screen.dart';
import 'package:newapp/screen/home/home_screen.dart';
import 'package:newapp/screen/otp/otp_screen.dart';

final Map<String, WidgetBuilder> routs = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  DetailsScreen.routeName: (context) => const DetailsScreen(),
};
