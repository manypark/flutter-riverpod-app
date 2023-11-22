import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:riverpod_app/presentation/providers/providers.dart';
import 'package:riverpod_app/presentation/screens/providers/hello_word_provider.dart';

class ProviderScreen extends ConsumerWidget {
  const ProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameProvider = ref.watch(helloWordProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider'),
      ),
      body: Center(
        child: Text(nameProvider, style: const TextStyle(fontSize: 34)),
      ),
    );
  }
}

// class ProviderScreen extends ConsumerStatefulWidget {
//   const ProviderScreen({super.key});

//   @override
//   ProviderScreenState createState() => ProviderScreenState();
// }

// class ProviderScreenState extends ConsumerState<ProviderScreen> {
//   @override
//   Widget build(BuildContext context) {
//     // final nameProvider = ref.watch( simpleNameProvider );

//     return GestureDetector(
//       onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('Provider'),
//         ),
//         body: const LoginInputDesignView(),
//       ),
//     );
//   }
// }

// class LoginInputDesignView extends StatelessWidget {
//   const LoginInputDesignView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(24),
//       child: Column(
//         children: [
//           TextFormField(
//             keyboardType: TextInputType.emailAddress,
//             decoration: InputDecoration(
//               filled: true,
//               fillColor: Colors.grey.shade100,
//               prefixIcon: Container(
//                 width: 10,
//                 height: 10,
//                 decoration: const BoxDecoration(
//                     color: Colors.white, shape: BoxShape.circle),
//                 child: const Image(
//                   image: AssetImage('assets/email.png'),
//                 ),
//               ),
//               enabledBorder: OutlineInputBorder(
//                 borderSide: BorderSide.none,
//                 borderRadius: BorderRadius.circular(30),
//               ),
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(30),
//                 borderSide: const BorderSide(color: Colors.blue, width: 2.0),
//               ),
//               hintText: 'Enter your email',
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
