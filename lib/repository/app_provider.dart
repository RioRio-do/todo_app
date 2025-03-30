import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'app_database.dart';
import 'todo_dao.dart';

part 'app_provider.g.dart';

// データベース召喚
@riverpod
AppDatabase appDatabase(Ref ref) {
  final database = AppDatabase();
  ref.onDispose(() => database.close());
  return database;
}

// DAO召喚
@riverpod
TodoDao todoDao(Ref ref) {
  final database = ref.watch(appDatabaseProvider);
  return database.todoDao;
}

// データ取得(購読)
@riverpod
Stream<List<Todo>> todos(Ref ref) {
  final todoDao = ref.watch(todoDaoProvider);
  return todoDao.watchAllTodos();
}
