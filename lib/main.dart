import 'package:flutter/material.dart';
import 'package:go_router_example/go_router/app_router.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      // routeInformationParser:
      //     NyAppRouter.returnRouter(true).routeInformationParser,
      //routerDelegate: NyAppRouter.returnRouter(true).routerDelegate,
      routerConfig: NyAppRouter.returnRouter(true),    // HERE WE CAN PASS USER IS 
    );
  }
}
