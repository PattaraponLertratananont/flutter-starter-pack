import 'package:flutter/material.dart';
import 'package:my_app/models/todo.dart';
import 'package:my_app/screens/detail.dart';

class TodoItem extends StatelessWidget {
  final TodoModel todo;
  const TodoItem({
    Key? key,
    required this.todo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(todo.title),
      subtitle: Text(todo.description),
      trailing: Icon(Icons.chevron_right),
      onTap: () {
        Navigator.pushNamed(
          context,
          DetailScreen.routeName,
          arguments: DetailScreenArguments(title: todo.title),
        );
      },
    );
  }
}
