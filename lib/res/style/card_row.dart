import 'package:flutter/material.dart';
import 'package:shopify/res/style/card_icon.dart';

class CardRow extends StatelessWidget {
  final IconData? iconOne;
  final IconData? iconTwo;
  final IconData? iconThree;
  final String? iconNameOne;
  final String? iconNameTwo;
  final String? iconNameThree;
  final void Function()? onPressOne;
  final void Function()? onPressTwo;
  final void Function()? onPressThree;

  const CardRow({
    super.key,
    required this.onPressOne,
    required this.onPressTwo,
    required this.onPressThree,
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
          onPress: onPressOne,
          icon: iconOne,
          iconName: iconNameOne,
        ),
        CardIcon(
          onPress: onPressTwo,
          icon: iconTwo,
          iconName: iconNameTwo,
        ),
        CardIcon(
          onPress: onPressThree,
          icon: iconThree,
          iconName: iconNameThree,
        )
      ],
    );
  }
}
