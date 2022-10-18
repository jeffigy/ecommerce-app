import 'package:flutter/cupertino.dart';

import './product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: '1',
      title: 'ADIDAS ultraboost 24 shoes',
      description: 'SKU (simple)	97525SH8CB128FGS',
      price: 9449.00,
      imageUrl:
      'https://assets.adidas.com/images/w_600,f_auto,q_auto/fa18004da1a6423ea5baac5500916ee7_9366/Ultraboost_4.0_DNA_Shoes_Black_FY9121_05_standard.jpg',
    ),
    Product(
        id: '2',
        title: 'ADIDAS Ultraboost 22 Shoes',
        description: 'SKU (simple)	78D25SHDFB39CAGS',
        price: 4000.00,
        imageUrl:
        'https://dynamic.zacdn.com/KK_WYbYEgJMFDHuwVWuP3rBYnjI=/fit-in/346x500/filters:quality(95):fill(ffffff)/https://static-ph.zacdn.com/p/adidas-4872-3641522-5.jpg')

  ];
  List<Product> get items {
    return [..._items];
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }
}