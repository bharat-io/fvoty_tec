import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  final Widget child;

  const GradientBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
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
          right: -100,
          child: Container(
            width: 400,
            height: 400,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              gradient: RadialGradient(
                center: Alignment.topRight,
                radius: 1.01,
                colors: [
                  Color.fromARGB(148, 189, 6, 173),
                  Color(0x00FF4DC0),
                ],
                stops: [0.0, 1.0],
              ),
            ),
          ),
        ),
        child,
      ],
    );
  }
}
