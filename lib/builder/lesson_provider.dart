import 'dart:convert';

import '../index.dart';
import '../model/lesson_model.dart';
import 'package:http/http.dart' as http;

class LessonProvider with ChangeNotifier {
  List<Lesson> _lessons = [];

  List<Lesson> get lessons => _lessons;

  Future<void> fetchData() async {
    final response =
    await http.get(Uri.parse('https://632017e19f82827dcf24a655.mockapi.io/api/lessons'));

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      final items = jsonData['items'] as List;
      _lessons = items.map((item) => Lesson.fromJson(item)).toList();
      notifyListeners();
    } else {
      throw Exception('Failed to load data');
    }
  }
}
