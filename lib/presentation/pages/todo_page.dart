import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/presentation/widgets/todo_form.dart';
import 'package:todo_app/presentation/widgets/todo_list.dart';

class TodoPage extends ConsumerStatefulWidget {
  const TodoPage({super.key});

  @override
  ConsumerState<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends ConsumerState<TodoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Todo List')),
      body: Column(
        children: [
          TodoForm(),
          Expanded(
            child: TodoList(), //
          ),
        ],
      ),
    );
  }
}
