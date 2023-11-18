// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import '../../../components/default_button.dart';
import 'package:newapp/constants.dart';
import '../components/splash_content.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Live Streaming App",
      'image': "assets/images/splash_1.png"
    },
    {
      "text": "Check all product in Live",
      'image': "assets/images/splash_2.png"
    },
    {"text": "In you place", 'image': "assets/images/splash_3.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: PageView.builder(
              onPageChanged: ((value) {
                setState(() {
                  currentPage = value;
                });
              }),
              itemCount: splashData.length,
              itemBuilder: (context, index) => SplashContent(
                image: splashData[index]["image"]!,
                text: splashData[index]["text"]!,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(25)),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      splashData.length,
                      (index) => BuildDot(index),
                    ),
                  ),
                  const SizedBox(height: 120),
                  DefaultButton(text: "Continue", press: () {}),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  AnimatedContainer BuildDot(int index) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : const Color(0xFFD8D8D8),
        borderRadius: const BorderRadius.all(Radius.circular(3)),
      ),
    );
  }
}
