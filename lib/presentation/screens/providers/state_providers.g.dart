// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$counterHash() => r'649fe78777e65974f918c36a9b7d20a65bd3465f';

/// See also [Counter].
@ProviderFor(Counter)
final counterProvider = NotifierProvider<Counter, int>.internal(
  Counter.new,
  name: r'counterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$counterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Counter = Notifier<int>;
String _$darkModeHash() => r'd19eeed7fa67a08c366852464a46b8efb61b3e9e';

/// See also [DarkMode].
@ProviderFor(DarkMode)
final darkModeProvider = NotifierProvider<DarkMode, bool>.internal(
  DarkMode.new,
  name: r'darkModeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$darkModeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$DarkMode = Notifier<bool>;
String _$randomNameHash() => r'e6b8e4cae658dd3f281e2a4212f2db2b8840f598';

/// See also [RandomName].
@ProviderFor(RandomName)
final randomNameProvider = NotifierProvider<RandomName, String>.internal(
  RandomName.new,
  name: r'randomNameProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$randomNameHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$RandomName = Notifier<String>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
