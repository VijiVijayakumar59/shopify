// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shopify/models/product.dart';

class ProductsViewModel extends ChangeNotifier {
  late List<Product> products;
  // bool isLoading = false;
  ProductsViewModel() {
    products = [];
  }

  Future<void> fetchProducts() async {
    try {
      // isLoading = true;
      final response = await http.get(
        Uri.parse('https://fakestoreapi.com/products'),
      );
      // log(response.toString());
      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        products = data.map((item) => Product.fromJson(item)).toList();
        notifyListeners();
        log(products.toString());
      } else {
        // Handle error, show error message, etc.
        print('Error fetching products. Status code: ${response.statusCode}');
        print('Response body: ${response.body}');
      }
      // isLoading = false;
    } catch (error) {
      // Handle other errors
      print('Error fetching products: $error');
      // isLoading = false;
    }
  }
}
