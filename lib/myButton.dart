import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final VoidCallback on_Tap;
  final String buttonText;

  MyButton({
    this.buttonText = "",
    this.on_Tap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: on_Tap,
      child: Container(
        height: 36.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.lightGreen[500],
        ),
        child: Center(
          child: Text(
            buttonText,
            textDirection: TextDirection.ltr,
          ),
        ),
      ),
    );
  }
}
