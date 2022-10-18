import 'package:ecommerce/providers/products_provider.dart';
import 'package:ecommerce/widgets/product_item.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = productsData.items;
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        childCount: products.length,
        (context, index) {
          return ChangeNotifierProvider.value(
            value: products[index],
            // create: (context) => products[index],
            child: ProductItem(),
          );
        },
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
