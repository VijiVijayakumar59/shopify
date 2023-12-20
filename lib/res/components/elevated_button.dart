import 'package:flutter/material.dart';
import 'package:shopify/res/colors.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final String text;
  final Color color;
  const ElevatedButtonWidget({
    super.key,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: blackColor,
        backgroundColor: mainColor,
        textStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: color,
        ),
      ),
      onPressed: () {},
      child: const Text(
        "Login",
      ),
    );
  }
}
