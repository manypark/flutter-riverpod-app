import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/presentation/screens/providers/providers.dart';

class StreamProviderScreen extends StatelessWidget {

  const StreamProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Provider'),
      ),
      body: const Center( child: StreamView() ),
    );
  }

}

class StreamView extends ConsumerWidget {

  const StreamView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    // final usersInChat = ref.watch(usersInChatProvider);
    final usersInChat = ref.watch( usersInChatProvider );

    if( !usersInChat.hasValue ) return const CircularProgressIndicator();

    return ListView.builder(
      itemCount: usersInChat.value!.length,
      itemBuilder: (context, index) {

        final name = usersInChat.value![index];
        return ListTile( title: Text(name) );
      },
    );
  }
}