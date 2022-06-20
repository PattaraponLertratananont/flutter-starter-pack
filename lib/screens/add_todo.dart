import 'package:flutter/material.dart';

class AddTodoScreen extends StatelessWidget {
  static const routeName = "/add-todo";
  const AddTodoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Todo"),
      ),
    );
  }
}
