import 'package:flutter/material.dart';

class CardIcon extends StatelessWidget {
  final void Function()? onPress;
  final IconData? icon;
  final String? iconName;
  const CardIcon({
    super.key,
    this.onPress,
    required this.icon,
    required this.iconName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {
            onPress!();
          },
          icon: Icon(
            icon,
            size: 30,
          ),
        ),
        Text(
          iconName!,
        )
      ],
    );
  }
}
