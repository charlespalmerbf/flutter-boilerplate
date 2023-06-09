import 'package:flutter_boilerplate/components/primary_button.dart';
import 'package:flutter_boilerplate/components/sso_tile.dart';
import 'package:flutter_boilerplate/components/text_field.dart';
import 'package:flutter_boilerplate/services/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

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

  void signUserUp() async {
    showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        });

    try {
      if (passwordController.text.trim() ==
          confirmPasswordController.text.trim()) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: usernameController.text.trim(),
            password: passwordController.text.trim());
        // ignore: use_build_context_synchronously
        Navigator.pop(context);
      } else {
        showErrorMessage("Passwords don't match");
      }
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      showErrorMessage(e.code);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset('lib/images/logo.png'),
              ),
              const Text("Flutter Boilerplate",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
              const SizedBox(height: 30),
              Text('Let\'s create an account for you!',
                  style: TextStyle(color: Colors.grey[700], fontSize: 16)),
              const SizedBox(height: 25),
              TextInput(
                  controller: usernameController,
                  hintText: 'Username',
                  obscureText: false,
                  prefixIcon: const Icon(Icons.mail)),
              const SizedBox(height: 10),
              TextInput(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                  prefixIcon: const Icon(Icons.lock)),
              const SizedBox(height: 10),
              TextInput(
                  controller: confirmPasswordController,
                  hintText: 'Confirm Password',
                  obscureText: true,
                  prefixIcon: const Icon(Icons.lock)),
              const SizedBox(height: 10),
              PrimaryButton(
                onTap: signUserUp,
                buttonText: 'Sign Up',
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
                  Text('Already have an account?',
                      style: TextStyle(color: Colors.grey[700])),
                  const SizedBox(width: 5),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: const Text('Login now',
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
