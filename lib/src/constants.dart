import 'package:flutter/material.dart';

/// The type of gradient to apply.
enum GradientType {
  /// A linear gradient.
  linear,

  /// A radial gradient.
  radial,
}

/// Direction to apply in the gradient.
enum GradientDirection {
  /// Bottom to top.
  btt,

  /// Left to right.
  ltr,

  /// Right to left.
  rtl,

  /// Top to bottom.
  ttb,

  /// Bottom left to top right.
  blttr,

  /// Bottom right to top left.
  brttl,

  /// Top left to bottom right.
  tltbr,

  /// Top right to bottom left.
  trtbl;

  (Alignment, Alignment) get alignment {
    return switch (this) {
      GradientDirection.btt => (Alignment.topCenter, Alignment.bottomCenter),
      GradientDirection.ltr => (Alignment.centerLeft, Alignment.centerRight),
      GradientDirection.rtl => (Alignment.centerRight, Alignment.centerLeft),
      GradientDirection.ttb => (Alignment.bottomCenter, Alignment.topCenter),
      GradientDirection.blttr => (Alignment.bottomLeft, Alignment.topRight),
      GradientDirection.brttl => (Alignment.bottomRight, Alignment.topLeft),
      GradientDirection.tltbr => (Alignment.topLeft, Alignment.bottomRight),
      GradientDirection.trtbl => (Alignment.topRight, Alignment.bottomLeft),
    };
  }
}
