import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/presentation/providers/providers.dart';

class StateNotifierScreen extends ConsumerWidget {

  const StateNotifierScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('State Notifier Provider'),
      ),
      body: const TodosView(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed : () => ref.read(todosStateNotifierProvider.notifier).addTodo(),
        label     : const Text('Add todo'),
        // child: const Text('Add todo'),
      ),
    );
  }

}

class TodosView extends ConsumerWidget {

  const TodosView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final currentFilter = ref.watch(todoFilterProvider);
    // final todos = ref.watch(todosStateNotifierProvider);
    final todos = ref.watch(filteredGuesProvider);
    
    return Column(
      children: [

        SegmentedButton(
          segments: const[
            ButtonSegment(value: TodoFilter.all, icon: Text('Todos' ) ),
            ButtonSegment(value: TodoFilter.completed, icon: Text('Invitados')),
            ButtonSegment(value: TodoFilter.pending , icon: Text('No invitados')),
          ], 
          selected: <TodoFilter>{ currentFilter },
          onSelectionChanged: (value) {
            ref.read( todoFilterProvider.notifier ).update( (state) => value.first );
          },
        ),
        const SizedBox( height: 5 ),

        // / Listado de personas a invitar
        Expanded(
          child: ListView.builder(
            itemCount   : todos.length,
            itemBuilder : (context, index) {

              final todo = todos[index];

              return SwitchListTile(
                title: Text( todo.description ),
                value: todo.done, 
                onChanged: ( value ) {
                  ref.read(todosStateNotifierProvider.notifier).toggleTodo( todo.id );
                }
              );
            },
          ),
        )
      ],
    );
  }

}
