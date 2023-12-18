import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopify/res/colors.dart';

class searchWidget extends StatelessWidget {
  const searchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {},
      decoration: InputDecoration(
        prefixIcon: const Icon(
          CupertinoIcons.search,
          color: greyColor,
        ),
        hintText: "Search anything",
        // suffixIcon: IconButton(
        //   icon: const Icon(Icons.clear_rounded),
        //   onPressed: () {
        //     // searchController.clear();
        //   },
        // ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}
