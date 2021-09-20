import 'package:flutter/material.dart';

class Student {
  final String name;

  const Student({
    required this.name,
  });
}

List<Student> students = [
  Student(name: 'Json'),
  Student(name: 'John'),
  Student(name: 'Maria'),
];

class StudentsSecondPage extends StatelessWidget {
  final List<Student> students;

  const StudentsSecondPage({Key? key, required this.students})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Students Name',
      home: StudentsSecondHomePage(),
    );
  }
}

class StudentsSecondHomePage extends StatelessWidget {
  const StudentsSecondHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text('Students Home'),
      ),
      body: Center(
        child: Column(
          children: students.asMap().keys.toList().map((index) {
            bool selected = index == selectedIndex;

            TextStyle style = selected
                ? TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  )
                : TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20.0,
                  );
            return Text(
              students[index].name,
              style: style,
            );
          }).toList(),
        ),
      ),
    );
  }
}
