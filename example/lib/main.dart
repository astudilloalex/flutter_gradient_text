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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GradientText(
                'Gradient Text Example',
                style: TextStyle(
                  fontSize: 40.0,
                ),
                colors: [
                  Colors.blue,
                  Colors.red,
                  Colors.teal,
                ],
              ),
              // This is a example for RadialGradient
              // Use Radius when use radial gradient text
              GradientText(
                'Gradient Text Example',
                style: TextStyle(
                  fontSize: 40.0,
                ),
                gradientType: GradientType.radial,
                radius: 2.5,
                colors: [
                  Colors.blue,
                  Colors.red,
                  Colors.teal,
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
