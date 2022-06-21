import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/screens/add_todo/add_todo_controller.dart';

void main() {
  test("value should be Please enter title., when Title value is empty", () {
    var controller = AddTodoController();
    var actual = controller.validateTitleTodo(null);
    var matcher = "Please enter title.";
    expect(actual, matcher);
  });

  test("value should Null., when Title value is empty", () {
    var controller = AddTodoController();
    var actual = controller.validateTitleTodo("fake title");
    expect(actual, null);
  });
}
