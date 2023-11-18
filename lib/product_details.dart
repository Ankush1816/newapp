// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  List<Color> colors = [Colors.blue, Colors.green, Colors.yellow, Colors.pink];
  List<String> imagePath = [
    "data:image/jpeg;base64,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",
    "https://th.bing.com/th?id=OIP.7SeMY3g9G_4NuDeEHBz8DgHaE3&w=308&h=202&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2",
    "https://th.bing.com/th?id=OIP.YWLqzwgxHxFZSlDSM1uMtAHaHn&w=246&h=253&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2",
    "https://th.bing.com/th/id/OIP.ltYraj_8Btf3A_FwFcPnEAHaHa?pid=ImgDet&w=188&h=188&c=7&dpr=1.3"
  ];
  var selectedColor = Colors.blue;
  var isFavourite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          header(),
          hero(),
          Expanded(child: section()),
          bottomButton()
        ],
      ),
    ));
  }

  Widget header() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network("images/back_button.png"),
          const Column(
            children: [
              Text("MEN'S ORIGINAL",
                  style: TextStyle(fontWeight: FontWeight.w100, fontSize: 16)),
              Text("Smith Shoes",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24))
            ],
          ),
          Image.network(
            "images/bag_button.png",
            height: 34,
            width: 34,
          ),
        ],
      ),
    );
  }

  Widget hero() {
    return Stack(
      children: [
        Image.network(imagePath[colors.indexOf(selectedColor)]),
        Positioned(
            bottom: 10,
            right: 20,
            child: FloatingActionButton(
              backgroundColor: Colors.white,
              onPressed: () {
                setState(() {
                  isFavourite = !isFavourite;
                });
              },
              child: Image.network(
                isFavourite
                    ? "images/heart_icon.png"
                    : "images/heart_icon_disabled.png",
                height: 34,
                width: 34,
              ),
            ))
      ],
    );
  }

  Widget section() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        children: [
          const Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In "
            "rutrum at ex non eleifend. Aenean sed eros a purus "
            "gravida scelerisque id in orci. Mauris elementum id "
            "nibh et dapibus. Maecenas lacinia volutpat magna",
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 14, height: 1.5),
          ),
          const SizedBox(height: 20),
          property()
        ],
      ),
    );
  }

  Widget property() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Color",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16)),
            const SizedBox(height: 10),
            Row(
              children: List.generate(
                  4,
                  (index) => GestureDetector(
                        onTap: () {
                          print("index $index clicked");
                          setState(() {
                            selectedColor == colors[index];
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          margin: const EdgeInsets.only(right: 10),
                          height: 34,
                          width: 34,
                          decoration: BoxDecoration(
                              color: colors[index],
                              borderRadius: BorderRadius.circular(17)),
                          child: selectedColor == colors[index]
                              ? Image.network("images/checker.png")
                              : const SizedBox(),
                        ),
                      )),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Size",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16)),
            const SizedBox(height: 10),
            Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                color: Colors.black.withOpacity(0.10),
                child: const Text(
                  "10.2",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ))
          ],
        )
      ],
    );
  }

  Widget bottomButton() {
    return Container(
      padding: const EdgeInsets.only(right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          OutlinedButton(
              onPressed: () {},
              child: const Text(
                "Add to Bag +",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              )),
          const Text(r"$95",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 28))
        ],
      ),
    );
  }
}
