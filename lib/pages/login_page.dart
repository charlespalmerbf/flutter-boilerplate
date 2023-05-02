import 'package:bubble_tea/components/text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(children: [
            const SizedBox(height: 50),

            const Icon(Icons.lock, size: 100),

            const SizedBox(height: 50),

            Text('Welcome back, you\'ve been missed!', style: TextStyle(color: Colors.grey[700], fontSize: 16)),

            const SizedBox(height: 25),

            const TextInput(),

            const SizedBox(height: 10),

            const TextInput(),
          ]),
        ),
      ),
    );
  }
}