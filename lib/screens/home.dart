import 'package:ecommerce/widgets/custom_appbar.dart';
import 'package:ecommerce/widgets/products_grid.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: CustomScrollView(
        slivers: [
          CustomAppBar(),
          SliverPadding(
            padding: EdgeInsets.all(10),
            sliver: ProductsGrid(),
          ),
        ],
      ),
    );
  }
}
