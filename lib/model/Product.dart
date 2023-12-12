// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "https://th.bing.com/th/id/R.38f73d6abc37358a21fdddc9dd43b758?rik=x%2fNY%2bQDik3%2b4tg&riu=http%3a%2f%2fwww.powerhouse.je%2fimages%2fsony-playstation-4-solus-gaming-console-white-p6922-7215_image.jpg&ehk=oN1M0D3pAbmtZ6EGZ7euRBgf%2bB2XcFtJqP4US2u%2fQpw%3d&risl=&pid=ImgRaw&r=0",
      "https://www.slashgear.com/wp-content/uploads/2014/09/white07.png",
      "https://th.bing.com/th/id/OIP.h7LSrmWHzpyVDUhqNEAGXQHaHa?rs=1&pid=ImgDetMain",
      "https://th.bing.com/th/id/R.8d9b5a4d2dbcdb714311ad32a3fafc16?rik=7rG2r9G%2fgBOSPA&riu=http%3a%2f%2fwww.powerhouse.je%2fimages%2fsony-playstation-4-solus-gaming-console-white-p6922-7213_image.jpg&ehk=FF2CIreVoA4rT0UTFyudRZg%2fyjSs3uWoWFAQiP48vOI%3d&risl=&pid=ImgRaw&r=0",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "PS4 Controller",
    price: 5982.00,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/Image Popular Product 2.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Nike Sport White",
    price: 900.00,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/glap.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Gloves XC Omega - Polygon",
    price: 1200,
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/wireless headset.png",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Logitech Head",
    price: 2000.20,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
