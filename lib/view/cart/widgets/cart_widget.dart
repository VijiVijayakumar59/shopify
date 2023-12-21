import 'package:flutter/material.dart';
import 'package:shopify/res/colors.dart';
import 'package:shopify/view/cart/widgets/cart_counter.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(
          22,
        ),
      ),
      surfaceTintColor: yellowColor,
      color: whiteColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(
              //     40,
              //   ),
              // ),
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.17,
              child: Image.asset(
                "assets/images/dress1.png",
                fit: BoxFit.fitWidth,
              ),
            ),
            const Column(
              children: [
                SizedBox(
                  width: 160,
                  child: Text(
                    "Elegant Sweatshirt",
                    style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 18,
                    ),
                  ),
                ),
                CartCounter(),
              ],
            ),
            const Text(
              "#300",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
