class Meal {
  final String id;
  String name;
  String description;

  Meal({required this.id, required this.name, required this.description});

  factory Meal.fromJson(Map<String, dynamic> json) {
    return Meal(
      id: json['id'].toString(),
      name: json['title'],
      description: json['body'],
    );
  }
}
