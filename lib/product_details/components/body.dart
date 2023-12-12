import 'package:flutter/material.dart';
import 'package:newapp/product_details/components/color_dot.dart';
import 'package:newapp/product_details/components/product_dis.dart';
import 'package:newapp/product_details/components/product_image.dart';
import 'package:newapp/product_details/components/top_rounded_container.dart';
import 'package:newapp/components/default_button.dart';
import 'package:newapp/constants.dart';
import 'package:newapp/model/Product.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductImages(product: product),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                product: product,
                pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                color: const Color(0xFFF6F7F9),
                child: Column(
                  children: [
                    ColorDots(product: product),
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
}