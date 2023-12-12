import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newapp/constants.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    super.key,
    required this.iconSrc,
    required this.press,
  });
  final String iconSrc;
  final void Function() press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        padding: EdgeInsets.all(getProportionateScreenWidth(12)),
        height: getProportionateScreenHeight(60),
        width: getProportionateScreenWidth(60),
        decoration: const BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(iconSrc),
      ),
    );
  }
}
