import 'package:flutter/material.dart';

import '../models/product.dart';

class ProductDetailPage extends StatelessWidget {
  

  const ProductDetailPage({
    Key? key,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final Product product = ModalRoute.of(context)!.settings.arguments as Product;


    return Scaffold(
      appBar: AppBar(
          title: Text(product.title, textAlign: TextAlign.center),
          centerTitle: true),
    );
  }
}
