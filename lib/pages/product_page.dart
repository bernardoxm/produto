import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget{
  const ProductPage({Key?key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold( appBar: AppBar(title: Text('Gerenciar produtos', style: TextStyle(color: Colors.black),),
    centerTitle: true,),


    );
  }
}