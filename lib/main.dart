import 'package:ecommerce/providers/products_provider.dart';
import 'package:ecommerce/screens/main_screen.dart';
import 'package:ecommerce/screens/product_detail.dart';
import 'package:ecommerce/theme/theme_constant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (context) => Products(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: lightTheme,
        home: MainScreen(),
        routes: {
          ProductDetail.routeName: (context) => ProductDetail(),
        },
      ),
    );
  }
}
