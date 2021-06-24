import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book App',
      initialRoute: '/',
      routes: {
        '/': (context) => FirstPageBody(),
        '/categories': (context) => CategoryFirstPage(),
      },
    );
  }
}

class FirstPageBody extends StatelessWidget {
  const FirstPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class CategoryFirstPage extends StatelessWidget {
  const CategoryFirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
