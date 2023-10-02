import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final double width;
  final String text;
  final Color color;
  final Function() onPressed;

  const Button(
      {super.key,
      this.width = 200,
      required this.text,
      this.color = Colors.blue,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: color // Establece el color de fondo del botón
            ),
        child: Text(text),
      ),
    );
  }
}
