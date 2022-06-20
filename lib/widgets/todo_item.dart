import 'package:flutter/material.dart';
import 'package:my_app/screens/detail.dart';

class TodoItem extends StatelessWidget {
  final int index;
  const TodoItem({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var title = "${index + 1}";
    return ListTile(
      title: Text(title),
      subtitle: Text("Subtitle"),
      trailing: Icon(Icons.chevron_right),
      onTap: () {
        Navigator.pushNamed(
          context,
          DetailScreen.routeName,
          arguments: DetailScreenArguments(title: title),
        ).then(
          (value) {
            print("TodoItem title is ${value}");
          },
        );
      },
    );
  }
}
