import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/config/config.dart';

final counterProvider = StateProvider.autoDispose<int>( (ref) => 0 );

final isDarkModeProvider = StateProvider<bool>((ref) {
  return false;
});

final randomNameProvider = StateProvider<String>((ref) {
  return RandomGenerator.getRandomName();
});
