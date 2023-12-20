import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  final int index;

  const Tile({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.28,
          width: 200,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 239, 226, 129),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: IconButton(
            alignment: Alignment.topRight,
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border,
            ),
          ),
        ),
      ],
    );
  }
}
