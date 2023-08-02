class Program {
  final String id;
  final String name;
  final String category;
  final int lesson;


  Program(this.id, {required this.name, required this.category, required this.lesson});

  factory Program.fromJson(Map<String, dynamic> json) {
    return Program(
      json['id'],
      name: json['name'],
      category: json['category'],
      lesson: json['lesson'],
    );
  }
}
