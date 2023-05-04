import 'package:bubble_tea/pages/forgotten_page.dart';
import 'package:bubble_tea/pages/login_page.dart';
import 'package:bubble_tea/pages/register_page.dart';
import 'package:flutter/material.dart';

class LoginOrRegisterPage extends StatefulWidget {
  const LoginOrRegisterPage({super.key});

  @override
  State<LoginOrRegisterPage> createState() => _LoginOrRegisterPageState();
}

class _LoginOrRegisterPageState extends State<LoginOrRegisterPage> {
  bool showLoginPage = true;
  bool showForgottenPage = false;

  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  void toggleForgotten() {
    setState(() {
      showForgottenPage = !showForgottenPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showForgottenPage) {
      return ForgottenPage(onForgottenTap: toggleForgotten);
    } else {
      if (showLoginPage) {
        return LoginPage(onTap: togglePages, onForgottenTap: toggleForgotten);
      } else {
        return RegisterPage(onTap: togglePages);
      }
    }
  }
}
