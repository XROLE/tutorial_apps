import 'package:flutter/material.dart';

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  @override
  Widget build(BuildContext context) {
    final Shader textGradient =
        RadialGradient(colors: [Colors.white, Color.fromRGBO(209, 209, 209, 1)])
            .createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
    final lightSource = Offset(0.75, -0.45);

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color.fromRGBO(32, 152, 232, 1),
        child: Column(
          children: [
            SizedBox(height: 100),
            Container(
              height: MediaQuery.of(context).size.height - 300,
              width: MediaQuery.of(context).size.width - 50,
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    left: 200,
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        shape: BoxShape.circle,
                        gradient: RadialGradient(
                            center: Alignment(lightSource.dx, lightSource.dy),
                            colors: [
                              Color.fromRGBO(244, 243, 242, 1),
                              Color.fromRGBO(209, 209, 209, 1)
                            ]),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 60,
                    left: 80,
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        shape: BoxShape.circle,
                        gradient: RadialGradient(
                            center: Alignment(lightSource.dx, lightSource.dy),
                            colors: [
                              Color.fromRGBO(245, 245, 104, 1),
                              Color.fromRGBO(216, 168, 55, 1)
                            ]),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 225,
                      left: 50,
                      child: ShaderMask(
                        shaderCallback: (rect) => RadialGradient(
                          colors: [
                             Color.fromRGBO(244, 243, 242, 1),
                              Color.fromRGBO(209, 209, 209, 1)
                          ],
                        ).createShader(rect),
                        child: Text(
                          'X',
                          style: TextStyle(
                              fontSize: 400,
                              fontWeight: FontWeight.bold,
                              // color: Colors.white,
                              foreground: Paint()..shader = textGradient),
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
