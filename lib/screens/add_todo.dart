import 'package:flutter/material.dart';

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
            TextField(controller: titleController),
            const SizedBox(height: 24),
            TextField(controller: descriptionController),
            const SizedBox(height: 24),
            ElevatedButton(
              child: Text("Submit"),
              onPressed: () {
                print(titleController.text);
                print(descriptionController.text);
              },
            ),
          ],
        ),
      ),
    );
  }
}
