import 'package:flutter/material.dart';

import '../components/product_item.dart';
import '../data/dummy_data.dart';
import '../models/product.dart';

class ProductsOverviewPage extends StatelessWidget {
  final List<Product> loadedProducts = dummyProducts;
  ProductsOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Minha Loja',  textAlign: TextAlign.center,),centerTitle: true,
       
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
        
          itemCount: loadedProducts.length,
          itemBuilder: (ctx, i) => ProductItem(product: loadedProducts[i],),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3/2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              
            ),
            ),
      ),
    );
  }
}
