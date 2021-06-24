import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String handler;
  Questions(this.handler);
  @override
  Widget build(BuildContext context) {
    return Text(
      handler,
      style: TextStyle(
        color: Colors.red,
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }
}
