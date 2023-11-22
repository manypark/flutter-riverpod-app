import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:riverpod_app/config/config.dart';
import 'package:riverpod_app/presentation/screens/providers/providers.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends ConsumerWidget {
  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final appRouter  = ref.watch( appRouterProvider );
    final isDarkMode = ref.watch( darkModeProvider );

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title       : 'Riverpod Providers',
      routerConfig: appRouter,
      theme       : AppTheme(isDarkmode: isDarkMode).getTheme(),
    );
  }
}
