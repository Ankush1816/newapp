import 'package:flutter/material.dart';
import 'package:newapp/theme.dart';
import 'package:newapp/home.dart';

void main() {
  runApp(
    MaterialApp(
      theme: theme(),
      debugShowCheckedModeBanner: false,
      home: const EcommerceApp(),
    ),
  );
}
