import 'package:flutter/material.dart';
import 'package:newapp/Screen/product_details/components/body.dart';
import 'package:newapp/Screen/product_details/components/customapp_bar.dart';
import 'package:newapp/constants.dart';
import 'package:newapp/model/Product.dart';

class ProductScreen extends StatelessWidget {
  static String routeName = "/product";

  @override
  Widget build(BuildContext context) {
    
    final ProductDetailsArguments? args = ModalRoute.of(context)?.settings.arguments as ProductDetailsArguments?;
    
    if (args == null) {
      return const Scaffold(body: Center(child: Text('Invalid arguments')));
    }

    SizeConfig().init(context);
    
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: CustomAppBar(
        rating: args.product.rating,
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: const Placeholder(),
      ),
      body: Body(product: args.product),
    );
  }
}

class ProductDetailsArguments {
  final Product product;
  ProductDetailsArguments({required this.product});
}
