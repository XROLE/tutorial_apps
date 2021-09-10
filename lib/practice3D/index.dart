import 'dart:math' as Math;

import 'package:flutter/material.dart';

class PracticePage extends StatefulWidget {
  const PracticePage({Key? key}) : super(key: key);

  @override
  _PracticePageState createState() => _PracticePageState();
}

class _PracticePageState extends State<PracticePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practice Page'),
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.5,
          width: double.infinity * 0.5,
          color: Color.fromRGBO(31, 150, 230, 1),
          child: CustomPaint(
            painter: myPainter(),
            child: Text('Xrole'),
          ),
        ),
      ),
    );
  }
}

class myPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double h = size.height;
    double w = size.width;

    // Path path = new Path()..moveTo(30, 30)..lineTo(100, 100)..lineTo(0, 100)..lineTo(0, 0);
    Paint brush = new Paint()
      ..color = Colors.white
      ..strokeCap;

    // Rect.fromCenter(
    //   center: Offset(100, 100),
    //   width: 50,
    //   height: 80,
    // );

    // canvas.drawCircle(Offset(50, 50), 50, brush);

    // Paint arcPaint = new Paint()..color = Colors.white;

    // canvas.drawArc(Rect.fromCenter(center: Offset(w / 2, h / 2), width: 50, height: 50), 0.4,
    //     2 * pi - 0.8, true, arcPaint);

    // canvas.drawColor(Colors.black, BlendMode.color);

    // Paint paint = new Paint()
    //   ..color = Colors.white
    //   ..strokeWidth = 20;

// THIS DRAWS TRIANGULAR PATH
    // Path trianglerPath = new Path()
    //   ..moveTo(size.width / 2, 100)
    //   ..lineTo(w - w / 4, h - h / 4)
    //   ..lineTo(w / 4, h - h / 4);
    // canvas.drawPath(trianglerPath, paint);

// THIS DRAWS STRAIGHT LINE FROM THE MIDDLE
    // canvas.drawLine(Offset(w / 2, 0), Offset(w / 2, h), paint);

    // final radius = Math.min(w, h) / 2;
    // final center = Offset(w / 2, h / 2);

    // final paint = Paint()..color = Colors.yellow;
    // Paint smileyPaint = Paint()
    //   ..style = PaintingStyle.stroke
    //   ..strokeWidth = 10;
    // final arcPaint = Paint()..style = PaintingStyle.stroke..strokeCap = StrokeCap.round..color = Colors.red..strokeWidth= 10;
    // final arc = Path()..moveTo(w * 0.2, h * 0.7)..arcToPoint(Offset(w * 0.8, h * 0.7), radius: Radius.circular(150));

    // canvas.drawCircle(center, radius, paint);
    // canvas.drawArc(
    //     Rect.fromCircle(center: center, radius: radius / 2), 0, Math.pi / 2, false, smileyPaint);
    // canvas.drawPath(arc, arcPaint);

    final cloudPaint = new Paint()..color = Colors.white..strokeCap = StrokeCap.round;

    final cloudPath = new Path();
    
    cloudPath.moveTo(w / 2, h / 2 + 20);
    cloudPath.quadraticBezierTo(w / 2 + 60, h / 2 - 80, w / 2 + 120, h / 2 + 20);
    cloudPath.quadraticBezierTo(w / 2 + 240, h / 2 + 60, w / 2 + 120, h / 2 + 120);
    cloudPath.lineTo(w / 2, h / 2 + 120);
    cloudPath.quadraticBezierTo(w / 2 - 90, h / 2 + 60, w / 2, h / 2 + 20);
    canvas.drawPath(cloudPath, cloudPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
