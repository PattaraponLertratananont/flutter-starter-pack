import 'package:flutter/material.dart';

class DetailScreenArguments {
  final String title;
  final String description;
  DetailScreenArguments({required this.title, required this.description});
}

class DetailScreen extends StatelessWidget {
  static const routeName = "/detail";
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var arguments =
        ModalRoute.of(context)!.settings.arguments as DetailScreenArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(arguments.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Detail Screen"),
            Text("Title is ${arguments.title}"),
            Text("Title is ${arguments.description}"),
          ],
        ),
      ),
    );
  }
}
