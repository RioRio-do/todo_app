import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'app_database.dart';
import 'todo_dao.dart';

part 'app_provider.g.dart';

@riverpod
AppDatabase appDatabase(Ref ref) {
  final database = AppDatabase();
  ref.onDispose(() => database.close());
  return database;
}

@riverpod
TodoDao todoDao(Ref ref) {
  final database = ref.watch(appDatabaseProvider);
  return database.todoDao;
}

@riverpod
Stream<List<Todo>> todos(Ref ref) {
  final todoDao = ref.watch(todoDaoProvider);
  return todoDao.watchAllTodos();
}
