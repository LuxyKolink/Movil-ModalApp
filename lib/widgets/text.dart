import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final bool isBold;
  final double fontSize;

  const CustomText(
      {super.key, required this.text, this.isBold = false, this.fontSize = 16});

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
        fontSize: fontSize,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal);

    return Text(text, style: textStyle);
  }
}
