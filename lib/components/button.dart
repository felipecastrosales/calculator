import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button.operation({
    super.key,
    required this.text,
    required this.onPressed,
    this.isBig = false,
    this.color = operationButtonColor,
  });

  const Button.large({
    super.key,
    required this.text,
    required this.onPressed,
    this.isBig = true,
    this.color = defaultButtonColor,
  });

  const Button({
    super.key,
    required this.text,
    required this.onPressed,
    this.isBig = false,
    this.color = defaultButtonColor,
  });

  static const darkButtonColor = Color.fromRGBO(82, 82, 82, 1);
  static const defaultButtonColor = Color.fromRGBO(112, 112, 112, 1);
  static const operationButtonColor = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final bool isBig;
  final Color color;
  final void Function(String) onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: isBig ? 2 : 1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w200,
          ),
        ),
        onPressed: () => onPressed(text),
      ),
    );
  }
}
