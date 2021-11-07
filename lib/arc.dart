import 'package:flutter/material.dart';

class Arc extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.teal
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.square;

    var rect = Rect.fromCenter(
        center: Offset(size.width / 2, size.height), width: 100, height: 100);

    var startAngle = 45.0;
    var sweepAngle = 90.0;
    var useCenter = true;
    canvas.drawArc(rect, startAngle, sweepAngle, useCenter, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
