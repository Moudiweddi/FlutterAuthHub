import 'package:flutter/material.dart';

class CustomActionButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color buttonColor;
  final Color borderColor;
  final VoidCallback onPressed;

  const CustomActionButton({
    super.key,
    required this.text,
    required this.textColor,
    required this.buttonColor,
    required this.borderColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 300,
      margin: const EdgeInsets.symmetric(
        horizontal: 50,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: borderColor),
        color: buttonColor,
      ),
      child: InkWell(
        onTap: onPressed,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
