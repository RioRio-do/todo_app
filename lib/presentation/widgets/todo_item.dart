import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/usecases/delete_todo.dart';
import '../../repository/app_database.dart';

class TodoItem extends ConsumerWidget {
  final Todo todo;
  const TodoItem({required this.todo, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      title: Text(todo.title),
      subtitle: Text(todo.content),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        onPressed: () async {
          await deleteTodo(ref, todo);
        },
      ),
    );
  }
}
