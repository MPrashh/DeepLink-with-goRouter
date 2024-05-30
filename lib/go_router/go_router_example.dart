// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:go_router_example/go_router/router.dart';

// class GoRouterExample extends StatelessWidget {
//   const GoRouterExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp.router(
//       routerConfig: goRouter,
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.amber,
//       ),
//     );
//   }
// }

// class HomeeScreen extends StatelessWidget {
//   const HomeeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home Page'),
//         backgroundColor: Colors.red,
//       ),
//       backgroundColor: Colors.red[100],
//       body: Padding(
//         padding: const EdgeInsets.all(32.0),
//         child: Center(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               ElevatedButton(
//                 onPressed: () {
//                   context.go("/red");
//                 },
//                 child: const Text('Color Details Screen'),
//               ),
//               const SizedBox(
//                 height: 32,
//               ),
//               ElevatedButton(
//                 onPressed: () => context.go('/detail'),
//                 child: const CenteredText('go /detail'),
//               ),
//               const SizedBox(
//                 height: 32,
//               ),
//               ElevatedButton(
//                 onPressed: () => context.push('/detail'),
//                 child: const CenteredText('push /detail'),
//               ),
//               const SizedBox(
//                 height: 32,
//               ),
//               ElevatedButton(
//                 onPressed: () => context.go('/modal'),
//                 child: const CenteredText('go /modal'),
//               ),
//               const SizedBox(
//                 height: 32,
//               ),
//               ElevatedButton(
//                 onPressed: () => context.go('/Example/4'), // passing param
//                 child: const CenteredText('go /Example'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class DetailScreen extends StatelessWidget {
//   const DetailScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Detail Page'),
//         backgroundColor: Colors.green,
//       ),
//       backgroundColor: Colors.green,
//       body: Padding(
//         padding: const EdgeInsets.all(32.0),
//         child: Center(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               ElevatedButton(
//                 onPressed: () => context.go('/modal'),
//                 child: const CenteredText('go /modal'),
//               ),
//               const SizedBox(
//                 height: 32,
//               ),
//               ElevatedButton(
//                 onPressed: () => context.push('/modal'),
//                 child: const CenteredText('push /modal'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ModalScreen extends StatelessWidget {
//   const ModalScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Modal Page'),
//         backgroundColor: Colors.blue,
//       ),
//       backgroundColor: Colors.blue,
//     );
//   }
// }

// class CenteredText extends StatelessWidget {
//   const CenteredText(this.text, {super.key});

//   final String text;

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       style: const TextStyle(fontSize: 30),
//       textAlign: TextAlign.center,
//     );
//   }
// }

// class ExampleScreen extends StatelessWidget {
//   const ExampleScreen({super.key, required this.id});

//   final String? id;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Example Page'),
//         backgroundColor: Colors.yellow.withOpacity(0.5),
//       ),
//       backgroundColor: Colors.grey,
//       body: Padding(
//         padding: const EdgeInsets.all(32.0),
//         child: Center(
//           child: Text("Example PAGE L: $id"),
//         ),
//       ),
//     );
//   }
// }

// class ErrorScreen extends StatelessWidget {
//   const ErrorScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Error Page'),
//         backgroundColor: Colors.yellow,
//       ),
//       backgroundColor: Colors.green,
//       body: const Padding(
//         padding: EdgeInsets.all(32.0),
//         child: Center(
//           child: Text("ERROR PAGE"),
//         ),
//       ),
//     );
//   }
// }
