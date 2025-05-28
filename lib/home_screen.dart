import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFB7D5EE), //  0xFFA169FE
            Color(0xFF70A9F0),
            // Color(0xFF0095EE),
            // Color(0xFF1849DB),
            Color(0xFF000AA4),
          ],
          stops: [0.0, 0.1, 1.0],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Text("data"),
        ),
      ),
    );
  }
}
