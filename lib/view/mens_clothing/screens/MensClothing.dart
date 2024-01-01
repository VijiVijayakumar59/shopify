// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopify/view/mens_clothing/widgets/grid_view.dart';

class MensClothing extends StatelessWidget {
  const MensClothing({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.32,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Find your",
                          style: GoogleFonts.aladin(
                            textStyle: const TextStyle(
                              fontSize: 38,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 0,
                          ),
                          child: Text(
                            "match style!",
                            style: GoogleFonts.sacramento(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 44,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    "assets/images/men.jpg",
                  ),
                ],
              ),
              const GridViewWidgetMen(),
            ],
          ),
        ),
      ),
    );
  }
}
