import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'hello_word_provider.g.dart';

@riverpod
String helloWord(HelloWordRef ref) {
  return 'Hola mundo';
}
