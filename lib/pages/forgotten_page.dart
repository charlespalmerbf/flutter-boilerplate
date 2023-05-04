import 'package:bubble_tea/components/primary_button.dart';
import 'package:bubble_tea/components/sso_tile.dart';
import 'package:bubble_tea/components/text_field.dart';
import 'package:bubble_tea/services/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgottenPage extends StatefulWidget {
  final Function()? onForgottenTap;

  const ForgottenPage({super.key, required this.onForgottenTap});

  @override
  State<ForgottenPage> createState() => _ForgottenPageState();
}

class _ForgottenPageState extends State<ForgottenPage> {
  final usernameController = TextEditingController();

  void showErrorMessage(String message) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.brown[200],
            title: Center(
              child: Text(message,
                  style: const TextStyle(fontSize: 12, color: Colors.white)),
            ),
          );
        });
  }

  void signUserIn() async {
    showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        });

    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: usernameController.text.trim());
      // ignore: use_build_context_synchronously
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      showErrorMessage(e.code);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const SizedBox(height: 50),
              const Icon(Icons.lock, size: 100),
              const SizedBox(height: 50),
              Text('Forgotten your password? Let\'s get you back on track!',
                  style: TextStyle(color: Colors.grey[700], fontSize: 16)),
              const SizedBox(height: 25),
              TextInput(
                  controller: usernameController,
                  hintText: 'Username',
                  obscureText: false,
                  prefixIcon: const Icon(Icons.mail)),
              const SizedBox(height: 25),
              PrimaryButton(
                onTap: signUserIn,
                buttonText: 'Reset Password',
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ))
                  ],
                ),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SSOTile(
                      imagePath: 'lib/images/google.png',
                      onTap: () => AuthService().signInWithGoogle()),
                  const SizedBox(width: 25),
                  SSOTile(
                    imagePath: 'lib/images/apple.png',
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Remembered?',
                      style: TextStyle(color: Colors.grey[700])),
                  const SizedBox(width: 5),
                  GestureDetector(
                    onTap: widget.onForgottenTap,
                    child: const Text('Login now!',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              const SizedBox(height: 50),
            ]),
          ),
        ),
      ),
    );
  }
}
