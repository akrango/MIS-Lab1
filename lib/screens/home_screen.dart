import 'package:flutter/material.dart';
import '../models/product.dart';
import './product_details_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
      name: 'Summer Dress',
      image: 'assets/summer_dress.jpg',
      description: 'Cute summer dress for any occasion.',
      price: 999,
    ),
    Product(
      name: 'Blue Jeans',
      image: 'assets/blue_jeans.jpg',
      description: 'Comfortable blue jeans for everyday wear.',
      price: 1990,
    ),
    Product(
      name: 'Black T-shirt',
      image: 'assets/black_tshirt.jpg',
      description: 'Plain black t-shirt for any occasion.',
      price: 599,
    ),
  ];

  void navigateToDetails(BuildContext context, Product product) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductDetailsScreen(product: product),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('213008'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return GestureDetector(
            onTap: () {
              navigateToDetails(context, product);
            },
            child: Card(
              child: Container(
                width: double.infinity,
                height: 350,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 250,
                      width: double.infinity,
                      color: const Color.fromARGB(255, 231, 214, 214),
                      child: Image.asset(
                        product.image,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.name,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                            product.description,
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Price: ${product.price} den.',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
