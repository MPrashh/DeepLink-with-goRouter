import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(
          'ContactUS',
          style: TextStyle(color: Colors.blue),
        ),
      ),
    );
  }
}
