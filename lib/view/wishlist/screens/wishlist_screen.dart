import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopify/res/colors.dart';
import 'package:shopify/view/wishlist/widgets/wishlist_card.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
            ),
          ),
          title: Text(
            "Wishlist",
            style: GoogleFonts.aladin(
              textStyle: const TextStyle(
                fontSize: 28,
              ),
            ),
          ),
        ),
        floatingActionButton: GestureDetector(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: mainColor),
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.14,
            child: const Icon(
              Icons.add,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset(
                      "assets/images/clothing_appbar.png",
                    ),
                    Text(
                      "Make yourself a collection",
                      style: GoogleFonts.sail(
                        textStyle: const TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    )
                  ],
                ),
                const WishlistCard(
                  name: "Wishlist",
                  items: "items",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
