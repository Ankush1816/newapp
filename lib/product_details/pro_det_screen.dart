import 'package:flutter/material.dart';
import 'package:newapp/product_details/components/body.dart';
import 'package:newapp/product_details/components/customapp_bar.dart';
import 'package:newapp/constants.dart';
import 'package:newapp/model/Product.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: CustomAppBar(
        rating: demoProducts[0].rating,
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: const Placeholder(),
      ),
      body: Body(product: demoProducts[0]),
    );
  }
}
