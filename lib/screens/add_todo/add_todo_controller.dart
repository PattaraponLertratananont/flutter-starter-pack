class AddTodoController {
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
