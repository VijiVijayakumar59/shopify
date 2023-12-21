import 'package:flutter/material.dart';
import 'package:shopify/res/colors.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.09,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: lightYellow,
              ),
              borderRadius: BorderRadius.circular(8),
              image: const DecorationImage(
                image: NetworkImage(
                    "https://www.shutterstock.com/image-photo/vintage-red-shoes-on-white-260nw-92008067.jpg"),
              ),
            ),
            width: MediaQuery.of(context).size.width * 0.15,
            height: MediaQuery.of(context).size.height * 0.09,
            margin: const EdgeInsets.all(8),
            // child: Center(
            //   child: Text('Item $index'),
            // ),
          );
        },
      ),
    );
  }
}
