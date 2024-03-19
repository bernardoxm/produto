import 'package:flutter/material.dart';

class Product with ChangeNotifier{
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  bool isFavorite;

  Product({
    required this.description,
    required this.id,
    this.isFavorite = false,
    required this.imageUrl,
    required this.price,
    required this.name,
  });
  void toggleFavorite(){
    isFavorite = !isFavorite;
notifyListeners();
  }
}
