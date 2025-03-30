import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../repository/app_provider.dart';
import '../repository/app_database.dart';

// Todoを挿入
Future<void> insertTodo(WidgetRef ref, String title, String content) async {
  final todoDao = ref.read(todoDaoProvider);
  await todoDao.insertTodo(
    TodosCompanion.insert(title: title, content: content),
  );
}
