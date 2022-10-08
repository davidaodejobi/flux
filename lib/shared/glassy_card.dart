import 'dart:ui';

import 'package:flutter/material.dart';

class GlassyCard extends StatelessWidget {
  final Color color;
  final Widget child;
  final double height;
  final double width;
  final double sigmaX;
  final double sigmaY;
  final Gradient? gradient;
  final double padding;
  const GlassyCard({
    Key? key,
    required this.color,
    required this.child,
    this.height = 0,
    this.width = 0,
    this.sigmaX = 50.0,
    this.sigmaY = 50.0,
    this.gradient,
    this.padding = 10.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY),
        child: Container(
          // height: height,
          // width: width,
          padding: EdgeInsets.symmetric(
            horizontal: padding,
            vertical: padding,
          ),
          decoration: BoxDecoration(
            gradient: gradient,
            color: color.withOpacity(0.5),
            borderRadius: BorderRadius.circular(10),
          ),
          child: child,
        ),
      ),
    );
  }
}
