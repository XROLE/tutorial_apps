import 'package:flutter/material.dart';
import 'package:tutorial_apps/3DAnimation/sphere_ball.dart';

class AnimationHome extends StatefulWidget {
  const AnimationHome({ Key? key }) : super(key: key);

  @override
  _AnimationHomeState createState() => _AnimationHomeState();
}

class _AnimationHomeState extends State<AnimationHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('3D Animation Example'),),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            const SphereBall(),
          ],
        ))
    );
  }
}