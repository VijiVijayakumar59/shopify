import 'package:flutter/material.dart';
import 'package:shopify/res/colors.dart';

// ignore: must_be_immutable
class ElevatedButtonWidget extends StatelessWidget {
  final String text;
  final Color bgColor;

  final Color? textColor;
  void Function()? onPress;
  ElevatedButtonWidget({
    super.key,
    required this.text,
    this.textColor,
    required this.bgColor,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: blackColor,
        backgroundColor: bgColor,
        textStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: bgColor,
        ),
      ),
      onPressed: onPress!,
      child: Text(
        text,
      ),
    );
  }
}
