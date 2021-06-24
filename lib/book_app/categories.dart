import 'package:flutter/material.dart';

class Categories {
  final String id;
  final String tittle;
  final Color color;

  Categories({
    required this.id,
    required this.tittle,
    this.color = Colors.redAccent,
  });
}
