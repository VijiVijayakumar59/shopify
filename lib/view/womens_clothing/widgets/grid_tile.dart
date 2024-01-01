import 'package:flutter/material.dart';
import 'package:shopify/models/product.dart';

class Tile extends StatelessWidget {
  final Product product;

  const Tile({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.28,
          width: MediaQuery.of(context).size.width * 0.4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Image.network(
                product.image,
                fit: BoxFit.fill,
                height: MediaQuery.of(context).size.height * 0.135,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  product
                      .title, // Assuming 'title' is a property in Product class
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 8,
                ),
                child: Text(
                  '\$${product.price}', // Assuming 'price' is a property in Product class
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: -15,
          right: 4,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border),
          ),
        ),
      ],
    );
  }
}
