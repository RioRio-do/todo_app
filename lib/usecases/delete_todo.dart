import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../repository/app_database.dart';
import '../repository/app_provider.dart';

// Todoを削除
Future<void> deleteTodo(WidgetRef ref, Todo todo) async {
  final todoDao = ref.read(todoDaoProvider);
  await todoDao.deleteTodo(todo);
}
