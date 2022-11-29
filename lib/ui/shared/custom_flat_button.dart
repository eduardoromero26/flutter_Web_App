import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  final String text;
  final Color color;
  final Function onPressed;

  const CustomFlatButton(
      {super.key,
      required this.text,
      this.color = Colors.pink,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () => onPressed(),
        style: TextButton.styleFrom(foregroundColor: color),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(text),
        ));
  }
}
