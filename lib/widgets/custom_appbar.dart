import 'package:flutter/material.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        SliverAppBar(
          floating: true,
          title: Text('E-commerce'),
          actions: [
            IconButton(onPressed: () {

            },icon: Icon(Icons.shopping_bag_rounded),)
          ],
        );
  }
}
