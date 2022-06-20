import 'package:flutter/material.dart';
import 'package:my_app/screens/add_todo.dart';

import '../models/todo.dart';
import '../widgets/todo_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Todo List"),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.pushNamed(context, AddTodoScreen.routeName).then(
                (value) {
                  if(value == null) return;
                  value as TodoModel;
                  print(value.title);
                  print(value.description);
                },
              );
            },
          ),
        ],
      ),
      body: TodoList(),
    );
  }
}
