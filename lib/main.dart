import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:think_todo_list/bottomBar/bottom_nav_bar.dart';

void main() async {
  await Hive.initFlutter();

  // Open both boxes
  await Hive.openBox('mainTodoBox');
  await Hive.openBox('secondaryTodoBox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TaskBuddy',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}
