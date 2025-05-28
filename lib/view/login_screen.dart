import 'package:flutter/material.dart';
import 'package:fovty_tec/view/widgets/gradint_background.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return GradientBackground(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
              child: Text("data"),
            )));
  }
}
