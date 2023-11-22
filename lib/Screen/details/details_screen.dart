import 'package:flutter/material.dart';
import 'package:newapp/model/Product.dart';
import 'components/body.dart';
import 'components/custom_app_bar.dart';

class DetailsScreen extends StatefulWidget {
  static String routeName = "/details";

  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments agrs = ModalRoute.of(context)?.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(rating: agrs.product.rating,preferredSize: Size.fromHeight(AppBar().preferredSize.height), child: Placeholder()),
      body: Body(product: agrs.product),
    );
  
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}
