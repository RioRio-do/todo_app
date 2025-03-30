import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/usecases/insert_todo.dart';

class TodoForm extends ConsumerStatefulWidget {
  const TodoForm({super.key});

  @override
  ConsumerState<TodoForm> createState() => _TodoFormState();
}

class _TodoFormState extends ConsumerState<TodoForm> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();

  void _onAddTodo() async {
    final title = _titleController.text;
    final content = _contentController.text;
    if (title.isNotEmpty && content.isNotEmpty) {
      await insertTodo(ref, title, content);
      _titleController.clear();
      _contentController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            decoration: InputDecoration(labelText: 'Title'),
          ),
          TextField(
            controller: _contentController,
            decoration: InputDecoration(labelText: 'Content'),
          ),
          ElevatedButton(onPressed: _onAddTodo, child: Text('Add Todo')),
        ],
      ),
    );
  }
}
