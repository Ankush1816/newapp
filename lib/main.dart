import 'package:flutter/material.dart';
import 'package:newapp/review_screen.dart';

void main() {
  runApp(const EcommerceApp());
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp();
  }
}

class Product {
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  List<String> comments = []; // List to store comments

  Product(this.name, this.description, this.price, this.imageUrl);
}

class ProductPage extends StatelessWidget {
  final List<Product> products = [
    Product('Product 1', 'Description for Product 1', 49.99,
        'https://th.bing.com/th?id=OIP.zRtS3kDls7LXqx281oMgOgHaKG&w=214&h=291&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2'),
    Product('Product 2', 'Description for Product 2', 79.99,
        'https://th.bing.com/th?id=OIP.LviMFRNqcw_vvzj9wJjVBgHaMV&w=193&h=322&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2'),
    Product('Product 3', 'Description for Product 3', 99.99,
        'https://th.bing.com/th?id=OIP.cPPnE_YrpZuGhDPzRoU9zgHaLG&w=204&h=306&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2'),
  ];

  ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('E-commerce App'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(products[index].imageUrl),
            title: Text(products[index].name),
            subtitle: Text(products[index].description),
            trailing: Text('\$${products[index].price.toStringAsFixed(2)}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailsPage(products[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class ProductDetailsPage extends StatefulWidget {
  final Product product;

  const ProductDetailsPage(this.product, {super.key});

  @override
  _ProductDetailsPageState createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage>
    with SingleTickerProviderStateMixin {
  TextEditingController commentController = TextEditingController();
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.product.name),
      ),
      body: Column(
        children: [
          SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(-1.0, 0.0),
              end: Offset.zero,
            ).animate(_controller),
            child: Image.network(widget.product.imageUrl),
          ),
          const SizedBox(height: 20),
          FadeTransition(
            opacity: _animation,
            child: Column(
              children: [
                Text(
                  widget.product.name,
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.product.description,
                  style: const TextStyle(fontSize: 16),
                ),
                Text(
                  '\$${widget.product.price.toStringAsFixed(2)}',
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: commentController,
            decoration: const InputDecoration(labelText: 'Add a comment'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                widget.product.comments.add(commentController.text);
                commentController.clear();
              });
            },
            child: const Text('Post Comment'),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: FadeTransition(
              opacity: _animation,
              child: ListView.builder(
                itemCount: widget.product.comments.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(widget.product.comments[index]),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
