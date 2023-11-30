import 'package:flutter/material.dart';
import 'package:newapp/constants.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    super.key,
    required this.text,
    required this.image,
  });
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        // const Spacer(),
        Text(
          'ByLaive',
          style: TextStyle(
              fontSize: getProportionateScreenWidth(36),
              color: kPrimaryColor,
              fontWeight: FontWeight.bold),
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.black),
        ),
        const SizedBox(height: 80),
        // const Spacer(),
        Image.asset(
          image,
          height: getProportionateScreenHeight(235),
          width: getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}
