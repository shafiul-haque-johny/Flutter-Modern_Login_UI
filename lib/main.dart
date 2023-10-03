import 'package:flutter/material.dart';
import 'package:login_ui_auth/log_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Ui Auth',
      debugShowCheckedModeBanner: false,
      home: LogInPage(),
    );
  }
}