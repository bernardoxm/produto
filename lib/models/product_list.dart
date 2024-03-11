import 'package:flutter/material.dart';
import 'package:produto/models/product.dart';

import '../data/dummy_data.dart';

class ProductList with ChangeNotifier{

final List<Product> _items = dummyProducts;
List<Product> get items =>[..._items];

void addPorduct(Product product){
_items.add(product);


}

}