import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gradient Text',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  const Text(
                    'Linear ',
                    style: TextStyle(fontSize: 40.0),
                  ),
                  // This is an example for `LinearGradient` with default direction
                  GradientText(
                    'Gradient',
                    style: const TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                    colors: const [
                      Colors.blue,
                      Colors.red,
                      Colors.teal,
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  const Text(
                    'Linear ',
                    style: TextStyle(fontSize: 40.0),
                  ),
                  // This is an example for `LinearGradient` with custom diagonal direction
                  // brttl = Bottom Right To Top Left
                  // The diagonal directions are only distinguishable from there axis
                  // counterparts when the text is quite short
                  GradientText(
                    'Gradient',
                    style: const TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                    gradientDirection: GradientDirection.tltbr,
                    colors: const [
                      Colors.blue,
                      Colors.red,
                      Colors.teal,
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  const Text(
                    'Linear ',
                    style: TextStyle(fontSize: 40.0),
                  ),
                  // This is an example for `RadialGradient`
                  // Use Radius when use radial gradient text
                  GradientText(
                    'Gradient',
                    style: const TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
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
            ],
          ),
        ),
      ),
    );
  }
}
