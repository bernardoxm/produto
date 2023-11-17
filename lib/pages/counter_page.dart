import 'package:flutter/material.dart';

import '../models/product.dart';

class CounterPage extends StatelessWidget {
  

  const CounterPage({
    Key? key,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final Product product = ModalRoute.of(context)!.settings.arguments as Product;


    return Scaffold(
      appBar: AppBar(
          title: Text('Exemplo contador', textAlign: TextAlign.center),
          centerTitle: true),
    );
  }
}
