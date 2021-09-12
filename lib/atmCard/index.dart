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
       iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 50,
              child: Image.asset("assets/img/logo.png")
            ),
            SizedBox(height: 50),
            Container(
              padding: EdgeInsets.only(left: 115),
              height: 400,
              width: MediaQuery.of(context).size.width,
              child: Transform.rotate(
                angle: math.pi / 5,
                child: Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Transform(
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.001)
                      ..rotateX(-0.35)
                      ..rotateY(0.75),
                    child: Stack(
                      children: [
                        // Positioned(left: 5, child: buildShadow()),
                        buildBox(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          
          Container(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
            child: Text('Sample apple card build with Flutter while leveraging Matrix4 identity transformation', style: TextStyle(fontSize: 16, color: Colors.black45),),
          ),
          ],
        ),
      ),
    );
  }
}

Widget buildBox() {
  return Container(
    height: 320,
    width: 250,
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
        boxShadow: [BoxShadow(color: Colors.grey, spreadRadius: 0.7, blurRadius: 0.7)]),
    child: Stack(
      children: [
        Positioned(
          top: 245,
          left: 35,
          child: Container(
            height: 60,
            child:
                Transform.rotate(angle: math.pi * 1.5, child: Image.asset("assets/img/apple2.png")),
          ),
        ),
        Positioned(
          top: 225,
          left: 149,
          child: Container(
            child: Transform.rotate(
              angle: math.pi * 1.5,
              child: Text(
                'Xrole Diaomond',
              ),
            ),
          ),
        ),
        Positioned(
          top: 40,
          left: 135,
          child: Container(
            height: 70,
            child:
                Transform.rotate(angle: math.pi * 1.5, child: Image.asset("assets/img/chip.png")),
          ),
        ),
      ],
    ),
  );
}

Widget buildShadow() {
  return Center(
      child: Transform(
    transform: Matrix4.identity()
      ..setEntry(3, 2, 0.001)
      ..rotateX(0)
      ..rotateY(0),
    child: Container(
      height: 320,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          end: Alignment.topCenter,
          begin: Alignment.bottomCenter,
          colors: [Color.fromRGBO(129, 129, 129, 1), Colors.white],
        ),
      ),
    ),
  ));
}
