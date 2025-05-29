import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  final TextEditingController? controller;

  const AppTextField({
    super.key,
    required this.hintText,
    this.isPassword = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return TextField(
      controller: controller,
      obscureText: isPassword,
      style: theme.textTheme.bodyMedium,
      decoration: InputDecoration(
        hintText: hintText,
        fillColor: Colors.white.withAlpha(38),
        labelStyle: const TextStyle(color: Colors.white),
        hintStyle: const TextStyle(color: Colors.white70, fontSize: 12),
        suffixIcon: isPassword
            ? Icon(Icons.visibility_outlined,
                color: Colors.white.withAlpha(125))
            : null,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.white.withAlpha(120)),
        ),
      ),
    );
  }
}
