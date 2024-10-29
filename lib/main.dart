import 'package:flutter/material.dart';
import 'package:login_ui_clone/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,

        // textTheme: TextTheme()
      ),
      home: LoginPage(),
    );
  }
}
