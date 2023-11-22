import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/presentation/screens/providers/providers.dart';

class FutureProviderScreen extends ConsumerWidget {
  const FutureProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final pokemonAsync = ref.watch( pokemonNameProvider );
    final pokemonAsync = ref.watch(pokemonNameProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Future Provider'),
      ),
      body: Center(
        child: pokemonAsync.when(
            data: (name) => Text(name, style: const TextStyle(fontSize: 34)),
            error: (_, __) => const Text('No se pudo ncargar el nombre'),
            loading: () => const CircularProgressIndicator()),
      ),
      floatingActionButton: Column(
        mainAxisAlignment : MainAxisAlignment.end,
        children          : [

          FloatingActionButton(
            heroTag: 'btn-1',
            child: const Icon(Icons.refresh),
            onPressed: () {
              ref.read(pokemonIdProvider.notifier).nextPokemon();
            },
          ),

          const SizedBox( height: 20 ,),
          
          FloatingActionButton(
            child: const Icon(Icons.do_not_disturb_on_total_silence_rounded),
            onPressed: () {
              ref.read(pokemonIdProvider.notifier).prevPokemon();
            },
          )
        ],
      ),
    );
  }
}
