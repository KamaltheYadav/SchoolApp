import 'package:flutter/material.dart';

class navText extends StatelessWidget {
  const navText({
    super.key,
    required this.navHeight,
    required this.text,
    required this.color,
  });

  final double navHeight;
  final String text;
  final dynamic color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: navHeight * 0.15,
        color: color,
        fontWeight: FontWeight.w500,
        letterSpacing: 1,
      ),
    );
  }
}
