import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/config/config.dart';
import 'package:riverpod_app/domain/domain.dart';
import 'package:uuid/uuid.dart';

const _uuid = Uuid();

enum TodoFilter { all, completed, pending }

final todoFilterProvider = StateProvider<TodoFilter>((ref) => TodoFilter.all );

 final todosProvider = StateProvider<List<Todo>>((ref) {
  return [
    Todo(id: _uuid.v4(), description: RandomGenerator.getRandomName(), completedAt: null),
    Todo(id: _uuid.v4(), description: RandomGenerator.getRandomName(), completedAt: DateTime.now()),
    Todo(id: _uuid.v4(), description: RandomGenerator.getRandomName(), completedAt: null),
    Todo(id: _uuid.v4(), description: RandomGenerator.getRandomName(), completedAt: DateTime.now()),
    Todo(id: _uuid.v4(), description: RandomGenerator.getRandomName(), completedAt: null),
  ];
 });

 final filteredTodosProvider = Provider<List<Todo>>((ref) {

  final selectedFilter = ref.watch( todoFilterProvider );
  final todos = ref.watch( todosProvider );

    switch (selectedFilter) {

      case TodoFilter.all:
        return todos;

      case TodoFilter.completed:
        return todos.where( (element) => element.done).toList();

      case TodoFilter.pending:
        return todos.where( (element) => !element.done).toList();
    }

 });
