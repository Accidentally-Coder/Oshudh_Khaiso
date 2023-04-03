import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String buttonText;
  final Function()?onTap;

  const MyButton({
    super.key,
    required this.buttonText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.symmetric(horizontal: 75),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFF06292),
                  Color(0xFFEC407A),
                  Colors.pink,
                ],
              ),
              borderRadius: BorderRadius.circular(30)
            ),
            child: Center(
              child: Text(
                buttonText,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )));
  }
}