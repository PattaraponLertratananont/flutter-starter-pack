import 'package:flutter/material.dart';

class DetailScreenArguments {
  final String title;
  DetailScreenArguments({required this.title});
}

class DetailScreen extends StatelessWidget {
  static const routeName = "/detail";
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var arguments =
        ModalRoute.of(context)!.settings.arguments as DetailScreenArguments;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Detail Screen"),
          Text("Title is ${arguments.title}"),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Back to home"),
          )
        ],
      ),
    );
  }
}
