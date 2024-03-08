import 'package:chat_chat/features/auth/presentation/pages/login_page.dart';
import 'package:chat_chat/features/auth/presentation/pages/sign_up_page.dart';
import 'package:flutter/material.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  bool showLoginPage = true;

  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(
        onPressed: togglePages,
      );
    } else {
      return SignUpPage(
        onPressed: togglePages,
      );
    }
  }
}
