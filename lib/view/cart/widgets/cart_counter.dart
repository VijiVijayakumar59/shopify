import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int itemCount = 1; // Initial value for the counter

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
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
            child: Icon(Icons.remove),
          ),
          Text(
            itemCount.toString(),
            style: TextStyle(fontSize: 18),
          ),
          GestureDetector(
            onTap: () {
              // Increase the counter
              setState(() {
                itemCount++;
              });
            },
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}