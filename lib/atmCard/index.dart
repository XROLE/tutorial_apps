import 'dart:math' as math;
import 'package:flutter/material.dart';

class AppleCard extends StatefulWidget {
  const AppleCard({Key? key}) : super(key: key);

  @override
  _AppleCardState createState() => _AppleCardState();
}

class _AppleCardState extends State<AppleCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apple Card'),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 150),
            Center(
              child: Transform.rotate(
                angle: math.pi/5,
                child: Transform(
                  transform: Matrix4.identity()..setEntry(3, 2, 0.001)..rotateX(-0.1)..rotateY(0.7),
                  child: Stack(
                    children: [
                      Container(
                        height: 380,
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.white,
                                Color.fromRGBO(240, 238, 239, 1),
                                Color.fromRGBO(221, 219, 220, 1),
                              ],
                            ),
                            boxShadow: [
                              BoxShadow(color: Colors.grey, spreadRadius: 0.7, blurRadius: 0.7)
                            ]),
                      ),
                      Positioned(
                        top: 270,
                        left: 149,
                        child: Container(
                          child: Transform.rotate(
                            angle: math.pi * 1.5,
                            child: Text(
                              'Flutter Demystifier',
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 300,
                        left: 35,
                        child: Container(
                          height: 60,
                          child: Transform.rotate(
                            angle: math.pi * 1.5,
                            child: Image.asset("assets/img/apple2.png")),
                        ),
                      ),
                      Positioned(
                        top: 40,
                        left: 135,
                        child: Container(
                          height: 70,
                          child: Transform.rotate(
                            angle: math.pi * 1.5,
                            child: Image.asset("assets/img/chip.png")),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
