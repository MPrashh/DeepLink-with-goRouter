import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_example/go_router/app_router_constants.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Center(
            child: Text('Home'),
          ),
          const SizedBox(
            height: 25,
          ),
          ElevatedButton(
            onPressed: () {
              // context.push("/about");
              GoRouter.of(context).push(
                Uri(path: '/about').toString(),
              );
            },
            child: const Text(
              'About Page',
              style: TextStyle(color: Colors.red),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          ElevatedButton(
            onPressed: () {
              GoRouter.of(context).pushNamed(
                MyAppRouteConstants.profileRouteName,
                pathParameters: {
                  'username': 'Prashant Mane',
                  'userid': 'PRASH0109M',
                },
              );
            },
            child: const Text(
              'Profile Page',
              style: TextStyle(color: Colors.green),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          ElevatedButton(
            onPressed: () {
              GoRouter.of(context).pushNamed(
                MyAppRouteConstants.contactUsRouteName,
              );
            },
            child: const Text(
              'ContactUs Page',
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
