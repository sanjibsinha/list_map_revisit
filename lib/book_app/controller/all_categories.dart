import 'package:flutter/material.dart';

class AllCategories extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  const AllCategories({
    Key? key,
    required this.id,
    required this.title,
    required this.color,
  }) : super(key: key);

  void selectCategory(BuildContext context) {
    Navigator.pushNamed(
      context,
      '/categories',
      arguments: {
        'id': id,
        'title': title,
        'color': color,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        selectCategory(context);
      },
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(
          10.0,
        ),
        margin: const EdgeInsets.all(
          10.0,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.1),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
