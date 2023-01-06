import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
                style: const TextStyle(
                  fontSize: 40.0,
                ),
                colors: const [
                  Colors.blue,
                  Colors.red,
                  Colors.teal,
                ],
              ),
              // This is a example for RadialGradient
              // Use Radius when use radial gradient text
              GradientText(
                'Gradient Text Example',
                style: const TextStyle(
                  fontSize: 40.0,
                ),
                gradientType: GradientType.radial,
                radius: 2.5,
                colors: const [
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
