import 'package:flutter/material.dart';
import 'package:my_app/models/todo.dart';

import 'todo_item.dart';

class TodoList extends StatelessWidget {
  final List<TodoModel> todoList;
  const TodoList({Key? key, required this.todoList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: todoList.length,
      itemBuilder: (context, index) {
        return TodoItem(todo: todoList[index]);
      },
    );
  }
}
