import 'package:flutter/material.dart';
import 'package:tutorial_apps/3DAnimation/d_curved.dart';
import 'package:tutorial_apps/3DAnimation/shadow_sphere.dart';
import 'package:tutorial_apps/3DAnimation/sphere_density.dart';
import 'package:tutorial_apps/3DAnimation/triangle.dart';

class SphereBall extends StatefulWidget {
  const SphereBall({Key? key}) : super(key: key);

  @override
  _SphereBallState createState() => _SphereBallState();
}

class _SphereBallState extends State<SphereBall> {
  static const lightSource = Offset(0, -0.75);
  @override
  Widget build(BuildContext context) {
    final size = Size.square(MediaQuery.of(context).size.shortestSide);
    return Stack( 
      children: [
        ShadowSphere(diameter: size.shortestSide),
        SphereDensity(
          lightSource: lightSource,
          diameter: size.shortestSide,
          child: Transform(
            origin: size.center(Offset.zero),
            transform: Matrix4.identity()..scale(0.5),
            child: Dcurved(lightSource: lightSource, child: Triangle(text: "The Triangle",),)),
        ),
      ],
    );
  }
}
