class TodoModel {
  final String title;
  final String description;

  TodoModel({required this.title, required this.description});

  TodoModel.fromJson(Map<String, dynamic> json)
      : title = json["title"],
        description = json["description"];

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
      };
}
