import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  final int index;
  const TodoItem({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("${index + 1}"),
      subtitle: Text("Subtitle"),
      trailing: Icon(Icons.chevron_right),
    );
  }
}