import 'package:flutter/material.dart';

import 'todo_item.dart';

class TodoList extends StatelessWidget {
  const TodoList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: 15,
      itemBuilder: (context, index) {
        return TodoItem(index: index);
      },
    );
  }
}
