import 'package:flutter/material.dart';
import 'package:newapp/constants.dart';

class CustomAppBar extends PreferredSize {
  final double rating;

  CustomAppBar({required this.rating, required super.preferredSize, required super.child});

  @override
  // AppBar().preferredSize.height provide us the height that appy on our app bar
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

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
                color: Colors.white,
                padding: EdgeInsets.zero,
                onPressed: () => Navigator.pop(context),
                icon: Image.asset(
                  "assets/icons/Back ICon.svg",
                  height: 15,
                ),
              ),
            ),
            Spacer(),
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
                  Image.asset("assets/icons/Star Icon.svg"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
