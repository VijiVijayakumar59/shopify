import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';
import 'package:shopify/view/mens_clothing/widgets/grid_tile.dart';
import 'package:shopify/view_model/products_view_model.dart';

class GridViewWidgetMen extends StatelessWidget {
  const GridViewWidgetMen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Consumer<ProductsViewModel>(
        builder: (context, productsViewModel, child) {
          if (productsViewModel.products.isEmpty) {
            // If the list is empty, fetch data
            productsViewModel.fetchProducts();
            return const CircularProgressIndicator();
          } else if (productsViewModel.products.isNotEmpty) {
            // Filter products based on category (women's clothing)
            final womenClothingProducts = productsViewModel.products
                .where((product) => product.category == "men's clothing")
                .toList();

            return GridView.custom(
              gridDelegate: SliverWovenGridDelegate.count(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 2,
                pattern: [
                  const WovenGridTile(1),
                  const WovenGridTile(
                    5 / 7,
                    crossAxisRatio: 0.9,
                    alignment: AlignmentDirectional.centerEnd,
                  ),
                ],
              ),
              childrenDelegate: SliverChildBuilderDelegate(
                (context, index) {
                  final product = womenClothingProducts[index];
                  return TileMen(
                    product: product,
                  );
                },
                childCount: womenClothingProducts.length,
              ),
            );
          } else {
            // Handle the case where there's an error fetching data
            return const Text('Error fetching products');
          }
        },
      ),
    );
  }
}
