import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: Text(
        'Hello Kartik Jabreba',
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ),
  );
}
