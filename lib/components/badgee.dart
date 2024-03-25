import 'package:flutter/material.dart';

class Badgee extends StatelessWidget {
  @override
  final Widget child;
  final String value;
  final Color? color;
  const Badgee({
    Key? key,
    required this.child,
    this.color,
    required this.value,
  }) : super(key: key);

  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      alignment: Alignment.center,
      children: [
        child,
        Positioned(
          right: 8,
          top: 8,
          child: Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: color ?? Colors.black54,
            ),
            constraints: BoxConstraints(minHeight: 16, minWidth: 16,),
            child: Text(
              textAlign: TextAlign.center,
              value,
              style: TextStyle(fontSize: 13,
              
            ),
          ),
        ),)
      ],
    );
  }
}
