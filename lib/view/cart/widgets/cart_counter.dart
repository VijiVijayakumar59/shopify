// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int itemCount = 1; // Initial value for the counter

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              // Decrease the counter
              if (itemCount > 1) {
                setState(() {
                  itemCount--;
                });
              }
            },
            child: const Icon(
              Icons.remove,
            ),
          ),
          Text(
            itemCount.toString(),
            style: const TextStyle(fontSize: 18),
          ),
          GestureDetector(
            onTap: () {
              // Increase the counter
              setState(() {
                itemCount++;
              });
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
