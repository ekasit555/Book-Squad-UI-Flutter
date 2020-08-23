
import 'dart:math';

import 'package:book_squad/constants.dart';
import 'package:flutter/material.dart';

class CircleProgressBar extends StatelessWidget {
  const CircleProgressBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      foregroundPainter: CircleProgress(
        currentProgress: 75, 
        outerColor: Colors.grey, 
        progressColor: primaryColor, 
        strokeWidth: 7),
      child: Container(
        width: 100,
        child: Center(
          child: Text("75 %", style: normalTextStyle,)
        )
      ),
    );
  }
}


class CircleProgress extends CustomPainter{

  double currentProgress;
  double strokeWidth;
  Color outerColor;
  Color progressColor;

  CircleProgress({
    this.currentProgress,
    this.strokeWidth = 10,
    this.outerColor = Colors.black,
    this.progressColor = Colors.redAccent,
  });

  @override
  void paint(Canvas canvas, Size size) {

    //this is base circle
    Paint outerCircle = Paint()
        ..strokeWidth = strokeWidth
        ..color = outerColor
        ..style = PaintingStyle.stroke;

    Paint completeArc = Paint()
      ..strokeWidth = strokeWidth
      ..color = progressColor
      ..style = PaintingStyle.stroke
      ..strokeCap  = StrokeCap.round;

    Offset center = Offset(size.width/2, size.height/2);
    double radius = min(size.width/2,size.height/2) - 10;

    canvas.drawCircle(center, radius, outerCircle); // this draws main outer circle

    double angle = 2 * pi * (currentProgress/100);

    canvas.drawArc(Rect.fromCircle(center: center,radius: radius), -pi/2, angle, false, completeArc);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}


