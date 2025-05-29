import 'package:flutter/material.dart';
import 'package:fovty_tec/view/home_screen.dart';

import 'package:fovty_tec/view/widgets/app_textfiled.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return _buildSignUpBackground(
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.white.withAlpha(38),
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(color: Colors.white),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Create Your Account",
                          style: theme.textTheme.headlineLarge),
                      const SizedBox(height: 8),
                      Text(
                        "Join Now & Unlock Your Digital Galaxy!",
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodySmall!
                            .copyWith(color: Colors.white),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        "Full Name",
                        style: theme.textTheme.bodySmall
                            ?.copyWith(fontSize: 12, color: Colors.white),
                      ),
                      const SizedBox(height: 4),
                      const AppTextField(
                        hintText: "Enter your full name ",
                        isPassword: false,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Username",
                        style: theme.textTheme.bodySmall
                            ?.copyWith(fontSize: 12, color: Colors.white),
                      ),
                      const SizedBox(height: 4),
                      const AppTextField(
                        hintText: "Enter your Username",
                        isPassword: false,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Create a password",
                        style: theme.textTheme.bodySmall
                            ?.copyWith(fontSize: 12, color: Colors.white),
                      ),
                      const SizedBox(height: 4),
                      const AppTextField(
                        hintText: "Enter your password",
                        isPassword: true,
                      ),
                      const SizedBox(height: 16),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Row(
                          children: [
                            Container(
                              width: 15,
                              height: 15,
                              margin: const EdgeInsets.only(right: 6),
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 1),
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                text: "I agree to the ",
                                style: theme.textTheme.bodySmall?.copyWith(
                                    color: Colors.white, fontSize: 12),
                                children: [
                                  TextSpan(
                                    text: "Terms & condition",
                                    style: theme.textTheme.bodyMedium?.copyWith(
                                        color: Color.fromARGB(255, 38, 44, 214),
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),
                      Center(child: _buildButton(onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HomeScreen()));
                      })),
                      const SizedBox(height: 16),
                      RichText(
                        text: TextSpan(
                          text: "Don't have an account? ",
                          style: theme.textTheme.bodySmall
                              ?.copyWith(color: Colors.white),
                          children: [
                            TextSpan(
                              text: "Sign in",
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w100,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -18,
            left: -120,
            child: Container(
              width: 500,
              height: 240,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const RadialGradient(
                  center: Alignment(0.0, 0.1),
                  radius: 0.4,
                  colors: [
                    Color.fromARGB(200, 24, 73, 219),
                    Color.fromARGB(0, 24, 73, 219),
                  ],
                  stops: [0.0, 1.0],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton({required Function onTap}) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          onTap();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF1C4BC4),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: const Text(
          "Sign Up",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Widget _buildSignUpBackground({Widget? child}) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFB7D5EE),
                Color(0xFF70A9F0),
                Color(0xFF0095EE),
                Color(0xFF1849DB),
                Color(0xFF000AA4),
              ],
              stops: [0.0, 0.2, 0.5, 0.8, 1.0],
            ),
          ),
        ),
        Positioned(
          top: -1,
          right: -125,
          child: Container(
            width: 600,
            height: 500,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              gradient: RadialGradient(
                center: Alignment.topRight,
                radius: 0.5,
                colors: [
                  Color.fromARGB(148, 189, 6, 173),
                  Color(0x00FF4DC0),
                ],
                stops: [0.0, 1.0],
              ),
            ),
          ),
        ),
        child!,
      ],
    );
  }
}
