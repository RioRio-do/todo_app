// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$appDatabaseHash() => r'fc30bd194c5eb2088ae8f4001dfacaf74d135976';

/// See also [appDatabase].
@ProviderFor(appDatabase)
final appDatabaseProvider = AutoDisposeProvider<AppDatabase>.internal(
  appDatabase,
  name: r'appDatabaseProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$appDatabaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AppDatabaseRef = AutoDisposeProviderRef<AppDatabase>;
String _$todoDaoHash() => r'72eadd35aec7f36535450eecc34dbc1112e9de3a';

/// See also [todoDao].
@ProviderFor(todoDao)
final todoDaoProvider = AutoDisposeProvider<TodoDao>.internal(
  todoDao,
  name: r'todoDaoProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$todoDaoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef TodoDaoRef = AutoDisposeProviderRef<TodoDao>;
String _$todosHash() => r'bf868d479c97c41bcb61114c39c72163ad126c0e';

/// See also [todos].
@ProviderFor(todos)
final todosProvider = AutoDisposeStreamProvider<List<Todo>>.internal(
  todos,
  name: r'todosProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$todosHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef TodosRef = AutoDisposeStreamProviderRef<List<Todo>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
