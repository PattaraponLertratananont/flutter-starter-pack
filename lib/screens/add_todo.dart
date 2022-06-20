import 'package:flutter/material.dart';
import 'package:my_app/models/todo.dart';

class AddTodoScreen extends StatefulWidget {
  static const routeName = "/add-todo";
  const AddTodoScreen({Key? key}) : super(key: key);

  @override
  State<AddTodoScreen> createState() => _AddTodoScreenState();
}

class _AddTodoScreenState extends State<AddTodoScreen> {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Todo"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: "Title",
                labelStyle: TextStyle(
                  color: Colors.brown,
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
                hintText: "This is placeholder.",
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
              ),
              cursorColor: Colors.red,
            ),
            const SizedBox(height: 24),
            TextField(controller: descriptionController),
            const SizedBox(height: 24),
            ElevatedButton(
              child: Text("Submit"),
              onPressed: () {
                Navigator.pop(
                  context,
                  TodoModel(
                    title: titleController.text,
                    description: descriptionController.text,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
