import 'package:bubble_tea/components/primary_button.dart';
import 'package:bubble_tea/components/text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {}

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

            TextInput(controller: usernameController, hintText: 'Username', obscureText: false),

            const SizedBox(height: 10),

            TextInput(controller: passwordController, hintText: 'Password', obscureText: true),

            const SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Forgot Password?', style: TextStyle(color: Colors.grey[600])),
                ],
              ),
            ),

            const SizedBox(height: 25),

            PrimaryButton(onTap: signUserIn),

            const SizedBox(height: 50),

          ]),
        ),
      ),
    );
  }
}