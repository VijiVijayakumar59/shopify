import 'package:flutter/material.dart';
import 'package:shopify/res/colors.dart';

class TextFormWidget extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  const TextFormWidget({
    super.key,
    required this.hintText,
    required this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: whiteColor,
        contentPadding: EdgeInsets.all(8),
        prefixIcon: Icon(
          prefixIcon,
        ),
        hintText: hintText,
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: yellowColor,
          ),
          borderRadius: BorderRadius.circular(
            28,
          ),
        ),
      ),
    );
  }
}
