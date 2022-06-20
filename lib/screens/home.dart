import 'package:flutter/material.dart';
import 'package:my_app/screens/add_todo.dart';

import '../models/todo.dart';
import '../widgets/todo_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<TodoModel> todoList = [
    TodoModel(
      title: "Learning About Flutter",
      description: "Mobile app with flutter.",
    ),
    TodoModel(
      title: "Homework Flutter course",
      description: "Flutter course starter pack.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Todo List"),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.pushNamed(
                context,
                AddTodoScreen.routeName,
              ).then(handleValueAfterCloseScreen);
            },
          ),
        ],
      ),
      body: TodoList(todoList: todoList),
    );
  }

  void handleValueAfterCloseScreen(Object? value) {
    if (value == null) return;
    value as TodoModel;
    setState(() {
      todoList.add(value);
    });
  }
}
