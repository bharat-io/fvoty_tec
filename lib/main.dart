import 'package:flutter/material.dart';
import 'package:fovty_tec/theme/app_theme.dart';
import 'package:fovty_tec/view/home_screen.dart';
import 'package:fovty_tec/view/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo', theme: AppTheme.lightTheme, home: LoginScreen());
  }
}
