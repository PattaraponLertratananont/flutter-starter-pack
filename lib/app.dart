import 'package:flutter/material.dart';
import 'package:my_app/screens/add_todo.dart';
import 'package:my_app/screens/detail.dart';
import 'package:my_app/screens/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      routes: <String, WidgetBuilder>{
        DetailScreen.routeName: (context) => DetailScreen(),
        AddTodoScreen.routeName: (context) => AddTodoScreen(),
      },
    );
  }
}
