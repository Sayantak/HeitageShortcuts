import 'package:flutter/material.dart';

class CustomBoxShadow extends BoxShadow {
  final BlurStyle blurStyle;

  const CustomBoxShadow({
    Color color = const Color(0xFF000000),
    Offset offset = Offset.zero,
    double blurRadius = 0.0,
    this.blurStyle = BlurStyle.normal,
  }) : super(color: color, offset: offset, blurRadius: blurRadius);

  @override
  Paint toPaint() {
    final Paint result = Paint()
      ..color = color
      ..maskFilter = MaskFilter.blur(this.blurStyle, blurSigma);
    assert(() {
      if (debugDisableShadows) result.maskFilter = null;
      return true;
    }());
    return result;
  }
}

class BlurBackground extends StatelessWidget {
  const BlurBackground({@required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final double _borderRadius = 30.0;

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(_borderRadius),
          boxShadow: const [
            CustomBoxShadow(
              color: Colors.blueAccent,
              blurRadius: 5.0,
              offset: Offset.zero,
              blurStyle: BlurStyle.outer,
            )
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(_borderRadius),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 4.0),
          child: child,
        ),
      ),
    );
  }
}
