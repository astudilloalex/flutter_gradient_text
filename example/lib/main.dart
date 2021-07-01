import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

// Main method, init the app
void main() {
  runApp(MyApp());
}

// Main app container
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gradient Text',
      home: Scaffold(
        body: Center(
          child: GradientText(
            'Gradient Text Example',
            colors: [
              Colors.blue,
              Colors.red,
              Colors.teal,
            ],
          ),
        ),
      ),
    );
  }
}
