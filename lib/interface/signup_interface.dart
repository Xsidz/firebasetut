import 'package:firebasetut/auth/Sin_Up.dart';
import 'package:firebasetut/auth/login_page.dart';
import 'package:flutter/material.dart';

class SignupInterface extends StatefulWidget {
  const SignupInterface({super.key});

  @override
  State<SignupInterface> createState() => _SignupInterfaceState();
}

class _SignupInterfaceState extends State<SignupInterface> {
  bool showLoginPage = true;
  void togglescreens() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(showRegisterPage: togglescreens);
    } else {
      return SignUp(showLoginPage: togglescreens);
    }
  }
}
