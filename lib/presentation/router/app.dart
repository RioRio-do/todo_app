import 'package:flutter/material.dart';
import 'package:todo_app/presentation/pages/todo_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Todo App', home: TodoPage());
  }
}
