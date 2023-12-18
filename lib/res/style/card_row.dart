import 'package:flutter/material.dart';
import 'package:shopify/res/style/card_icon.dart';

class CardRow extends StatelessWidget {
  final IconData? iconOne;
  final IconData? iconTwo;
  final IconData? iconThree;
  final String? iconNameOne;
  final String? iconNameTwo;
  final String? iconNameThree;

  const CardRow({
    super.key,
    required this.iconOne,
    required this.iconTwo,
    required this.iconThree,
    required this.iconNameOne,
    required this.iconNameTwo,
    required this.iconNameThree,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CardIcon(
          icon: iconOne,
          iconName: iconNameOne,
        ),
        CardIcon(
          icon: iconTwo,
          iconName: iconNameTwo,
        ),
        CardIcon(
          icon: iconThree,
          iconName: iconNameThree,
        )
      ],
    );
  }
}
