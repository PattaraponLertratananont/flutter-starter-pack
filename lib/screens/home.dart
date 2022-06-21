import 'package:flutter/material.dart';
import 'package:my_app/screens/add_todo/add_todo.dart';
import 'package:my_app/services/todo.dart';

import '../models/todo.dart';
import '../widgets/todo_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<TodoModel> todoList = [];

  @override
  void initState() {
    getTodoList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var todoListReversed = todoList.reversed.toList();
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
      body: TodoList(todoList: todoListReversed),
    );
  }

  void handleValueAfterCloseScreen(Object? value) {
    if (value == null) return;
    value as TodoModel;
    TodoService().addTodo(value).then((_) {
      getTodoList();
    });
  }

  void getTodoList() {
    TodoService().getTodos().then((value) {
      setState(() {
        todoList = value;
      });
    });
  }
}
