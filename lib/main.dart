import 'package:flutter/material.dart';
import 'package:fluttertask/screens/home_page.dart';
import 'package:sizer/sizer.dart';
import 'builder/category_provider.dart';
import 'builder/lesson_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(Sizer(builder: (context, orientation, deviceType) {
    return   MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProgramProvider()),
        ChangeNotifierProvider(create: (_) => LessonProvider()),
      ],
      child: MyApp(),
    );
  }));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}


