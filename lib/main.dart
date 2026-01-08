import 'package:ecommerce_app/cores/theme/app_theme.dart';
import 'package:ecommerce_app/view/signup_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: const SignupPage(),
    );
  }
}

