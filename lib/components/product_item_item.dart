import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/models/cart.dart';

import '../models/product.dart';
import '../utils/app_routes.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final product = Provider.of<Product>(context, listen: false);
    final cart = Provider.of<Cart>(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
          onTap: () {
            Navigator.of(context).pushNamed(
              AppRoutes.PRODUCT_DETAIL,
              arguments: product,
            );
          },
        ),
        footer: GridTileBar(
          title: Text(
            product.name,
            textAlign: TextAlign.center,
          ),
          leading: Consumer<Product>(
            builder: (ctx, product, _) => IconButton(
              onPressed: () {
                product.toggleFavorite();
              },
              icon: Icon(
                  product.isFavorite ? Icons.favorite : Icons.favorite_border),
              color: Theme.of(context).canvasColor,
            ),
          ),
          trailing: IconButton(
            onPressed: () {
              cart.addItem(product);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Produto adicionado com sucesso!'),
                  duration: Duration(seconds: 1),
                  action: SnackBarAction(
                    label: 'DESFAZER',
                    
                    onPressed: () {
                      cart.removeSigleItem(product.id);
                    },
                  ),
                ),
              );
            },
            icon: Icon(
              Icons.shopping_cart,
            ),
            color: Theme.of(context).canvasColor,
          ),
          backgroundColor: Colors.black54,
        ),
      ),
    );
  }
}