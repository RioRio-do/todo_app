import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../repository/app_provider.dart';
import 'todo_item.dart';

class TodoList extends ConsumerWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todosAsyncValue = ref.watch(todosProvider);
    return todosAsyncValue.when(
      data: (todos) {
        return ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) {
            final todo = todos[index];
            return TodoItem(todo: todo);
          },
        );
      },
      loading: () => Center(child: CircularProgressIndicator()),
      error:
          (error, stackTrace) =>
              Center(child: Text('Error: ${error.toString()}')),
    );
  }
}
