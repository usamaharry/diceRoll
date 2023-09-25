import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final List<Color> colors;
  final Alignment start;
  final Alignment end;
  final Widget child;

  const GradientContainer({
    super.key,
    required this.colors,
    required this.child,
    this.start = Alignment.topLeft,
    this.end = Alignment.bottomRight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: start,
          end: end,
        ),
      ),
      child: child,
    );
  }
}
