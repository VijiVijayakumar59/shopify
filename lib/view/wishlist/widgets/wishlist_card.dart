import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WishlistCard extends StatelessWidget {
  final String name;
  final String items;

  const WishlistCard({
    Key? key,
    required this.name,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true, // Added this line
      physics: const NeverScrollableScrollPhysics(), // Added this line
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: 2,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width * 0.46,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/dress2.png",
                  fit: BoxFit.cover,
                ),
                Text(
                  name,
                  style: GoogleFonts.aBeeZee(
                    textStyle: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Text(items),
              ],
            ),
          ),
        );
      },
    );
  }
}

