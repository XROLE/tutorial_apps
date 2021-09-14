import 'package:flutter/material.dart';
import 'dart:math' as math;

class Ring3D extends StatefulWidget {
  const Ring3D({Key? key}) : super(key: key);

  @override
  _Ring3DState createState() => _Ring3DState();
}

class _Ring3DState extends State<Ring3D> {
  final lightSource = Offset(0.3, -0.5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topRight, colors: [
          Color.fromRGBO(37, 131, 217, 1),
          Color.fromRGBO(27, 94, 168, 1),
        ])),
        child: Center(
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 160),
              Stack(
                children: [
                  Transform(
                    transform: Matrix4.identity()..setEntry(3, 2, 0.001)..rotateX(0)..rotateY(- math.pi / 24),
                    child: Container(
                      height: 260,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(216, 94, 228, 1),
                        shape: BoxShape.circle,
                        gradient: RadialGradient(colors: [
                          Colors.white,
                          Color.fromRGBO(216, 94, 228, 1),
                        ], center: Alignment(lightSource.dx, lightSource.dy)),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 13,
                    child: Container(
                      height: 215,
                      width: 218,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: RadialGradient(colors: 
                        [
                          Color.fromRGBO(37, 131, 217, 1),
                          Color.fromRGBO(216, 94, 228, 1),

                        ],
                        stops: [0.98, 1]
                        ),
                        
                      ),
                    ),
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
