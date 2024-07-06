import 'package:firebase_core/firebase_core.dart';
import 'package:firebasetut/auth/interface/auth_interface.dart';
import 'package:firebasetut/firebase_options.dart';
import 'package:firebasetut/auth/login_page.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthInterface(),
    );
  }
}
