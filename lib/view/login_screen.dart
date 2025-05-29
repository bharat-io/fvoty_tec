import 'package:flutter/material.dart';
import 'package:fovty_tec/view/widgets/app_textfiled.dart';
import 'package:fovty_tec/view/widgets/gradint_background.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GradientBackground(
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
                      Text("Sign In", style: theme.textTheme.headlineLarge),
                      const SizedBox(height: 8),
                      Text(
                        "Access Your Galaxy - Sign In to Continue!",
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodySmall!
                            .copyWith(color: Colors.white),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        "Username",
                        style: theme.textTheme.bodySmall
                            ?.copyWith(fontSize: 12, color: Colors.white),
                      ),
                      const SizedBox(height: 2),
                      const AppTextField(
                        hintText: "Enter your Username",
                        isPassword: false,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        "Password",
                        style: theme.textTheme.bodySmall
                            ?.copyWith(fontSize: 12, color: Colors.white),
                      ),
                      const SizedBox(height: 2),
                      const AppTextField(
                        hintText: "Enter your password",
                        isPassword: true,
                      ),
                      const SizedBox(height: 8),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forget Password?",
                          style: theme.textTheme.bodySmall
                              ?.copyWith(color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 24),
                      Center(child: _buildButton()),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          const Expanded(child: Divider(color: Colors.white54)),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text("Or Sign In with",
                                style: theme.textTheme.bodySmall),
                          ),
                          const Expanded(child: Divider(color: Colors.white54)),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _socialButton("assets/images/facebook.png"),
                          _socialButton("assets/images/google.png"),
                          _socialButton("assets/images/apple.png"),
                        ],
                      ),
                      const SizedBox(height: 24),
                      RichText(
                        text: TextSpan(
                          text: "Don't have an account? ",
                          style: theme.textTheme.bodySmall
                              ?.copyWith(color: Colors.white),
                          children: [
                            TextSpan(
                              text: "Sign Up",
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
          Positioned(
            top: -100,
            right: -120,
            child: Container(
              width: 400,
              height: 400,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(2)),
                gradient: RadialGradient(
                  center: Alignment.center,
                  radius: 0.3,
                  colors: [
                    Color.fromARGB(144, 162, 105, 254),
                    Color(0x00A169FE),
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

  Widget _buildButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF1C4BC4),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: const Text(
          "Sign In",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Widget _socialButton(String icon) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Image.asset(icon),
    );
  }
}
