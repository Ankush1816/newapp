import 'package:flutter/material.dart';
import 'package:newapp/constants.dart';
import 'package:newapp/product_details/pro_det_screen.dart';

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bylaive", style: TextStyle(color: kTextColor)),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProductScreen(),
              ),
            );
          },
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                color: kPrimaryColor, borderRadius: BorderRadius.circular(10)),
            child: const Center(
              child: Text(
                'Preview Product details',
                style: TextStyle(color: kSecondaryColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
