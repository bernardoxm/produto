import 'package:flutter/material.dart';
import 'package:shop/models/product.dart';

import '../data/dummy_data.dart';

class ProductList with ChangeNotifier{

List<Product> _items = dummyProducts;

bool _showFavoriteOnly = false;


List<Product> get items {
  if(_showFavoriteOnly){
    return _items.where((prod) => prod.isFavorite).toList();

  }
  return [..._items];

}
void showFavoriteOnly (){
  _showFavoriteOnly = true;
notifyListeners();
}




void showALL (){
  _showFavoriteOnly = false;
  notifyListeners();
  
}

void addPorduct(Product product){
_items.add(product);
notifyListeners();

}

}