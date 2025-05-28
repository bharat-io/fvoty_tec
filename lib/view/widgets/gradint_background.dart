import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  final Widget child;

  const GradientBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: child,
    );
  }
}
