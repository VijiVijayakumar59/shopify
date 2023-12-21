import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddressTextWidget extends StatelessWidget {
  final String text;
  const AddressTextWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.aBeeZee(
        textStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
