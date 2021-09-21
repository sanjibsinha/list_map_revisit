import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class Student with ChangeNotifier {
  final String id;
  final String name;
  final String imageUrl;

  Student({
    required this.id,
    required this.name,
    required this.imageUrl,
  });
}

class Students with ChangeNotifier {
  /// adding id and images
  List<Student> students = [
    Student(
      id: 's1',
      name: 'Json',
      imageUrl:
          'https://cdn.pixabay.com/photo/2018/09/11/19/49/education-3670453_960_720.jpg',
    ),
    Student(
      id: 's2',
      name: 'Limpi',
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/11/29/13/56/asian-1870022_960_720.jpg',
    ),
    Student(
      id: 's3',
      name: 'Maria',
      imageUrl:
          'https://cdn.pixabay.com/photo/2017/09/21/13/32/girl-2771936_960_720.jpg',
    ),
  ];
}

class InkWellExample extends StatelessWidget {
  const InkWellExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Students Name',
      home: StudentsHomePage(),
    );
  }
}

class StudentsHomePage extends StatelessWidget {
  const StudentsHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final students = Provider.of<Students>(context).students;
    return Scaffold(
      appBar: AppBar(
        title: Text('Students Home Page'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: students.length,
        itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
          value: students[i],
          child: const StudentList(),
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}

class StudentList extends StatelessWidget {
  const StudentList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final student = Provider.of<Student>(context, listen: false);
    return InkWell(
      onTap: () {},
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                  ),
                  child: Image.network(
                    student.imageUrl,
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 200,
                    color: Colors.black54,
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    child: Text(
                      student.name,
                      style: const TextStyle(
                        fontFamily: 'Allison',
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
