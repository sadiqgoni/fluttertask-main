import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../model/program_model.dart';

class ProgramProvider with ChangeNotifier {
  List<Program> _programs = [];

  List<Program> get programs => _programs;

  Future<void> fetchData() async {
    final response = await http.get(Uri.parse('https://632017e19f82827dcf24a655.mockapi.io/api/programs'));

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      final items = jsonData['items'] as List;
      _programs = items.map((item) => Program.fromJson(item)).toList();
      notifyListeners();
    } else {
      throw Exception('Failed to load data');
    }
  }
}
