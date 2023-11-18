// ignore_for_file: empty_constructor_bodies

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants.dart';

class CustomAppBar extends PreferredSize {
  final double rating;

  CustomAppBar({
    Key? key,
    required Size preferredSize,
    required this.rating,
    required Widget child,
  }) : super(key: key, preferredSize: preferredSize, child: child);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Row(
          children: [
            SizedBox(
              height: getProportionateScreenWidth(40),
              width: getProportionateScreenWidth(40),
              child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: () => Navigator.pop(context),
                icon: SvgPicture.asset(
                  "assets/icons/Back ICon.svg",
                ),
              ),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  Text(
                    "$rating",
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 5),
                  SvgPicture.asset("assets/icons/Star Icon.svg"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

@override
Size get preferredSize {
  return Size.fromHeight(AppBar().preferredSize.height);
}
