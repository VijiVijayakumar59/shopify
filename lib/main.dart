import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopify/view/home/screens/home.dart';
import 'package:shopify/view_model/products_view_model.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ProductsViewModel(),
        ),
      ],
      child: const MyApp(),
    ),
  );
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
      home: const HomeScreen(),
    );
  }
}
