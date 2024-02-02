import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

void main() {
  test('Throw Constructor: Colors list must have at least two colors', () {
    Never result() => throw GradientText(
          'Hello World',
          colors: const [
            Colors.red,
          ],
        );

    expect(
      result,
      throwsA(
        isA<AssertionError>().having(
          (error) => error.message,
          'message',
          'Colors list must have at least two colors',
        ),
      ),
    );
  });
}
