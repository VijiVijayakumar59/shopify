import 'package:flutter/material.dart';
import 'package:shopify/res/colors.dart';

class TwoTextWidget extends StatelessWidget {
  final String? textOne;
  final String? textTwo;

  const TwoTextWidget({
    Key? key,
    required this.textOne,
    required this.textTwo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          textOne!,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        Text(
          textTwo!,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: greyColor,
          ),
        ),
      ],
    );
  }
}
