import 'package:flutter/material.dart';

class SphereDensity extends StatefulWidget {
  final Offset lightSource;
  final double diameter;
  final Widget child;

  const SphereDensity({Key? key, required this.lightSource, required this.diameter, required this.child})
      : super(key: key);
  @override
  _SphereDensityState createState() => _SphereDensityState();
}

class _SphereDensityState extends State<SphereDensity> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.widget.diameter,
      height: this.widget.diameter,
      decoration: BoxDecoration(
        // color: Colors.black,
        shape: BoxShape.circle,
        gradient: RadialGradient(
          center: Alignment(this.widget.lightSource.dx, this.widget.lightSource.dy),
          colors: [Colors.grey, Colors.black],
        ),
      ),
      child: this.widget.child ,
    );
  }
}
