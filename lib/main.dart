import 'package:flutter/material.dart';

import '../utils/app_routes.dart';
import 'pages/products_overview_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.amber).copyWith(secondary: Colors.red),
       
      ),
      home:  ProductsOverviewPage(),
      routes: {

        AppRoutes.PRODUCT_DETAIL:(ctx) => ProductsOverviewPage(),

      },
    );
  }
}
