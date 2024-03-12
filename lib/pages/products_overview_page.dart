import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/components/product_grid.dart';
import 'package:shop/models/product_list.dart';

enum FilterOptions {
  Favorite,
  All,
}

class ProductsOverviewPage extends StatelessWidget {
  const ProductsOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha Loja'),
        centerTitle: true,
        actions: [
          Tooltip(
            message: 'Favoritos',
            child: IconButton(
              icon: const Icon(Icons.favorite),
              onPressed: () {
                Provider.of<ProductList>(context, listen: false)
                    .showFavoriteOnly();
              },
            ),
          ),
          Tooltip(
            message: 'Todos',
            child: IconButton(
              icon: const Icon(Icons.add_home),
              onPressed: () {
                Provider.of<ProductList>(context, listen: false).showALL();
              },
            ),
          ),
        ],
      ),
      body: ProductGrid(),
    );
  }
}
