import 'package:flutter/widgets.dart';

class Books {
  final String id;
  final List<String> categories;
  final String title;
  final String detail;

  Books({
    required this.id,
    required this.categories,
    required this.title,
    required this.detail,
  });
}
