import 'package:flutter/material.dart';
import 'package:tutorial_apps/3DAnimation/sphere_ball.dart';
import 'package:tutorial_apps/atmCard/index.dart';
import 'package:tutorial_apps/practice3D/3d_ring.dart';
import 'package:tutorial_apps/practice3D/ball.dart';
import 'package:tutorial_apps/practice3D/index.dart';

class AnimationHome extends StatefulWidget {
  const AnimationHome({Key? key}) : super(key: key);

  @override
  _AnimationHomeState createState() => _AnimationHomeState();
}

class _AnimationHomeState extends State<AnimationHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('3D Animation Example'),
      ),
      body: Container(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (contex) => Ball()));
                      },
                      child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                              color: Colors.amber, borderRadius: BorderRadius.circular(8)),
                          child: Text('Ball')),
                    ),
                    SizedBox(width: 20),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (contex) => AppleCard()));
                      },
                      child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                              color: Colors.amber, borderRadius: BorderRadius.circular(8)),
                          child: Text('Apple Card')),
                    ),
                    SizedBox(width: 20),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (contex) => Ring3D()));
                      },
                      child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                              color: Colors.amber, borderRadius: BorderRadius.circular(8)),
                          child: Text('3D Ring')),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              const SphereBall(),
            ],
          )),
      floatingActionButton: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => PracticePage()));
          },
          child: Text('Xrole')),
    );
  }
}
