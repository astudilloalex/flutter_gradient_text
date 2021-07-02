import 'package:flutter/material.dart';
import 'package:simple_gradient_text/src/constants.dart';

/// A gradient text.
class GradientText extends StatelessWidget {
  /// Colors used to show the gradient.
  final List<Color> colors;

  /// Direction in which the gradient will be displayed.
  final GradientDirection? gradientDirection;

  /// The type of gradient to apply.
  final GradientType? gradientType;

  /// How visual overflow should be handled.
  final TextOverflow? overflow;

  /// The radius of the gradient, as a fraction of the shortest side
  /// of the paint box.
  final double radius;

  /// If non-null, the style to use for this text.
  final TextStyle? style;

  /// The text to display.
  final String? text;

  /// How the text should be aligned horizontally.
  final TextAlign? textAlign;

  GradientText(
    this.text, {
    required this.colors,
    this.gradientDirection = GradientDirection.ltr,
    this.gradientType = GradientType.linear,
    this.overflow,
    this.radius = 1.0,
    this.style,
    this.textAlign,
  })  : assert(
          text != null,
          'A non-null String must be provided to a Text widget.',
        ),
        assert(
          colors.length >= 2,
          'Colors list must have at least two colors',
        );

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: _createShader,
      child: Text(
        text!,
        overflow: overflow,
        style: _style,
        textAlign: textAlign,
      ),
    );
  }

  Alignment _direction(String key) {
    final Map<String, Alignment> map = {};
    switch (gradientDirection) {
      case GradientDirection.rtl:
        map['begin'] = Alignment.centerRight;
        map['end'] = Alignment.centerLeft;
        break;
      case GradientDirection.ttb:
        map['begin'] = Alignment.topCenter;
        map['end'] = Alignment.bottomCenter;
        break;
      case GradientDirection.btt:
        map['begin'] = Alignment.bottomCenter;
        map['end'] = Alignment.topCenter;
        break;
      default:
        map['begin'] = Alignment.centerLeft;
        map['end'] = Alignment.centerRight;
        break;
    }
    return map[key]!;
  }

  Shader _createShader(Rect bounds) {
    switch (gradientType) {
      case GradientType.radial:
        return _radialGradient.createShader(bounds);
      default:
        return _linearGradient.createShader(bounds);
    }
  }

  Gradient get _linearGradient {
    return LinearGradient(
      begin: _direction('begin'),
      colors: colors,
      end: _direction('end'),
      tileMode: TileMode.clamp,
    );
  }

  Gradient get _radialGradient {
    return RadialGradient(
      colors: colors,
      radius: radius,
    );
  }

  TextStyle get _style {
    if (style != null) return style!.copyWith(color: Colors.white);
    return TextStyle(color: Colors.white);
  }
}
