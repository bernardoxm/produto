import 'package:flutter/material.dart';

import '../models/product.dart';
import '../providers/counter.dart';

class CounterPage extends StatefulWidget {
  

  const CounterPage({
    Key? key,
    
  }) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final Product product = ModalRoute.of(context)!.settings.arguments as Product;
    final provider =  CounterProvider.of(context);

    return Scaffold(
      appBar: AppBar(
          title: Text('Exemplo contador', textAlign: TextAlign.center),
          centerTitle: true),
          body: Column(children: [
            Text( provider ?.state.value.toString() ?? '0'),
            
            IconButton(onPressed: (){
              setState(() {
                 provider?.state.inc();
          
              });
             

            }, icon: Icon(Icons.add)),IconButton(onPressed: (){
             setState(() {
               provider?.state.dec();
          
             });
              

            }, icon: Icon(Icons.remove)),
          ]),
    );
  }
}
