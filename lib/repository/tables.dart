import 'package:drift/drift.dart';

// 表の定義
class Todos extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withLength(min: 1, max: 50)();
  TextColumn get content => text().named('body')();
}
