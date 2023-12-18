import 'package:flutter/material.dart';
import 'package:shopify/view/home/screens/bottom_nav.dart';
import 'package:shopify/view/home/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Petrona",
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 234, 223, 124)),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}
