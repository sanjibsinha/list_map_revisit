import 'package:flutter/material.dart';
import 'package:list_map_revisit/book_app/model/dummy_books.dart';

class SecondPage extends StatelessWidget {
  SecondPage({Key? key}) : super(key: key);

  var title;
  var color;
  var id;

  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context)!.settings.arguments as Map;
    final id = arguments['id'];
    final title = arguments['title'];
    final color = arguments['color'];
    final categoryBooks = DUMMY_BOOKS.where((book) {
      return book.categories.contains(id);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: color,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.all(10.0),
                    padding: EdgeInsets.all(10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                        bottomLeft: Radius.circular(15.0),
                        bottomRight: Radius.circular(15.0),
                      ),
                      child: Image.network(categoryBooks[index].imageURL),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.all(10.0),
                child: Text(
                  categoryBooks[index].title,
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.all(10.0),
                child: Text(
                  categoryBooks[index].detail,
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ),
            ],
          );
        },
        itemCount: categoryBooks.length,
      ),
    );
  }
}
