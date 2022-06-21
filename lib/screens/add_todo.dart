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
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Todo"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
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
                  errorBorder: OutlineInputBorder(),
                ),
                cursorColor: Colors.red,
                validator: validateTitleTodo,
              ),
              const SizedBox(height: 24),
              TextFormField(
                controller: descriptionController,
                validator: validateDescriptionTodo,
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                child: Text("Submit"),
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.pop(
                      context,
                      TodoModel(
                        title: titleController.text,
                        description: descriptionController.text,
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  String? validateTitleTodo(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter title.";
    } else {
      return null;
    }
  }

  String? validateDescriptionTodo(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter description.";
    } else {
      return null;
    }
  }
}
