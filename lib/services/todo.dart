import 'dart:convert';

import 'package:my_app/models/todo.dart';

import 'package:http/http.dart' as http;

class TodoService {
  Future<List<TodoModel>> getTodos() async {
    var url = Uri.https("tryapi-tawny.vercel.app", "/todos");
    var response = await http.get(url);
    List<TodoModel> todos = [];
    for (var jsonTodo in jsonDecode(response.body)) {
      todos.add(TodoModel.fromJson(jsonTodo));
    }
    return todos;
  }

  Future<void> addTodo(TodoModel data) async {
    var url = Uri.https("tryapi-tawny.vercel.app", "/todos");
    var body = jsonEncode(data);
    await http
        .post(url, body: body, headers: {"Content-type": "application/json"});
  }
}
