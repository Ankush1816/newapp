// ignore_for_file: missing_required_param

import 'package:flutter/material.dart';
import 'package:newapp/components/default_button.dart';
import 'package:newapp/model/Product.dart';
import 'package:newapp/constants.dart';

import 'color_dots.dart';
import 'product_description.dart';
import 'top_rounded_container.dart';
import 'product_images.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductImages(product: product),
        const TopRoundedContainer(
          color: Colors.white,
          child: Text('Hello'),
        ),
      ],
    );
  }
}

@override
Widget build(BuildContext context) {
  return Column(
    children: [
      ProductImages(product: demoProducts[0]),
      TopRoundedContainer(
        color: Colors.white,
        child: Column(
          children: [
            ProductDescription(
              product: Product,
              pressOnSeeMore: () {},
            ),
            TopRoundedContainer(
              color: const Color(0xFFF6F7F9),
              child: Column(
                children: [
                  ColorDots(product: demoProducts[1]),
                  TopRoundedContainer(
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: SizeConfig.screenWidth! * 0.15,
                        right: SizeConfig.screenWidth! * 0.15,
                        bottom: getProportionateScreenWidth(40),
                        top: getProportionateScreenWidth(15),
                      ),
                      child: DefaultButton(
                        text: "Add To Cart",
                        press: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
