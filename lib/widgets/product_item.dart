import 'package:ecommerce/providers/product.dart';
import 'package:ecommerce/screens/product_detail.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
final product = Provider.of<Product>(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(
            ProductDetail.routeName,
            arguments: product.id,
          );
        },
        child: GridTile(
          footer: GridTileBar(
            title: Text(product.price.toString(), textAlign: TextAlign.center),
            backgroundColor: Colors.black45,
          ),
          header: GridTileBar(
            backgroundColor: Colors.black45,
            leading: IconButton(
              onPressed: () {
                product.toggleFavoriteStatus();
              },
              icon:  Icon(product.isFavorite ? Icons.favorite : Icons.favorite_border),
            ),
            title: Text(product.title),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_bag_outlined),
            ),
          ),
          child: Image.network(
            product.imageUrl,
            // fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
