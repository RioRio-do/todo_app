import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/presentation/router/app.dart';

void main() {
  runApp(const ProviderScope(child: App()));
}
