import 'package:flutter/material.dart';
import 'package:tutorial_apps/3DAnimation/triangle.dart';

class Dcurved extends StatelessWidget {
  final Offset lightSource;
  final Widget child;

  const Dcurved({Key? key, required this.lightSource, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final innerShadowWidth = lightSource.distance * 0.1;

    return Container(
      decoration: BoxDecoration(
        // color: Colors.black,
        shape: BoxShape.circle,
        gradient: RadialGradient(
          // center: Alignment(this.widget.lightSource.dx, this.widget.lightSource.dy),
          stops: [1 - innerShadowWidth, 1],
          colors: [Color(0xff661f1f1f), Colors.black],
        ),
      ),
      child: this.child,
    );
  }
}
