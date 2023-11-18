import 'package:flutter/material.dart';
import '../../model/Product.dart';
import 'components/body.dart';
import 'components/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";

  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Object? agrs = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: CustomAppBar(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        rating: 4.5,
        child: Container(
          color: Colors.red,
        ), // Replace with the desired child widget
      ),


      body: Body(product: (agrs as ProductDetailsArguments).product),
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}
