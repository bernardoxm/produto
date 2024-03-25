import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/models/cart.dart';
import 'package:shop/pages/cart_page.dart';

import '/models/product_list.dart';
import '/pages/product_detail_page.dart';
import '/pages/products_overview_page.dart';
import '/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ProductList(),
        ),
        ChangeNotifierProvider(
          create: (_) => Cart(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Colors.yellow,
            secondary: Colors.deepOrange,
            
            
          ),
          fontFamily: 'Lato',
         textTheme: TextTheme(
        headline6: TextStyle(
          color: Colors.black,
          fontSize: 20, // Tamanho do texto da AppBar
          fontWeight: FontWeight.bold,),),


        ),
        home: const ProductsOverviewPage(),
        routes: {
          AppRoutes.PRODUCT_DETAIL: (ctx) => const ProductDetailPage(),
          AppRoutes.CART: (ctx) => const CartPage(),
          
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
