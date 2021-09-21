import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//import 'package:list_map_revisit/book_app/view/first_page.dart';
//import 'package:list_map_revisit/list_map_one/first_approach.dart';
//import 'package:list_map_revisit/list_map_one/second_approach.dart';
import 'package:list_map_revisit/list_map_provider/list_map_provider.dart';

void main() {
  //runApp(FirstPage());
  //runApp(StudentsFirstPage(students: students));
  //runApp(StudentsSecondPage(students: students));
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Students(),
        ),
      ],
      child: const ListMapProvider(),
    ),
  );
}
