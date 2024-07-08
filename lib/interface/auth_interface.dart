import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebasetut/pages/home_page.dart';
import 'package:firebasetut/auth/login_page.dart';
import 'package:firebasetut/interface/signup_interface.dart';
import 'package:flutter/material.dart';

class AuthInterface extends StatelessWidget {
  const AuthInterface({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return HomePage();
            } else {
              return SignupInterface();
            }
          }),
    );
  }
}
