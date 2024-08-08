import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({super.key, required this.text, required this.onPressed});

  final String text;
  final VoidCallback onPressed;

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.black,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          side: BorderSide(
            color: Colors.black,
            width: 1,
          ),
        ),
      ),
      onPressed: widget.onPressed,
      child: Text(widget.text),
    );
  }
}
