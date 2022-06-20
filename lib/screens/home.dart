import 'package:flutter/material.dart';
import 'package:my_app/screens/add_todo.dart';

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
              Navigator.pushNamed(context, AddTodoScreen.routeName);
            },
          ),
        ],
      ),
      body: TodoList(),
    );
  }
}
