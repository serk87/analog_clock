import 'dart:math';

import 'package:flutter/material.dart';

class ClockPainter extends CustomPainter {
  final BuildContext context;
  final DateTime dateTime;
  ClockPainter({required this.context, required this.dateTime});
  @override
  void paint(Canvas canvas, Size size) {
    final theme = Theme.of(context);

    double centerX = size.width / 2;
    double centerY = size.height / 2;
    Offset center = Offset(centerX, centerY);

    //Calculation minutes
    double minuteX = centerX + size.width * 0.35 * cos((dateTime.minute * 6) * pi / 180);
    double minuteY = centerY + size.width * 0.35 * sin((dateTime.minute * 6) * pi / 180);
    //Minutes line
    canvas.drawLine(
        center,
        Offset(minuteX, minuteY),
        Paint()
          ..color = theme.accentColor
          ..style = PaintingStyle.stroke
          ..strokeWidth = 10);
    //Calculation hours
    double hourX = centerX + size.width * 0.3 * cos((dateTime.hour * 30 + dateTime.minute * 0.5) * pi / 180);
    double hourY = centerY + size.width * 0.3 * sin((dateTime.hour * 30 + dateTime.minute * 0.5) * pi / 180);
    //Hours line
    canvas.drawLine(
        center,
        Offset(hourX, hourY),
        Paint()
          ..color = theme.colorScheme.secondary
          ..style = PaintingStyle.stroke
          ..strokeWidth = 10);
    //Calculation seconds
    double secondX = centerX + size.width * 0.4 * cos((dateTime.second * 6) * pi / 180);
    double secondY = centerY + size.width * 0.4 * sin((dateTime.second * 6) * pi / 180);
    //Seconds line
    canvas.drawLine(center, Offset(secondX, secondY), Paint()..color = theme.primaryColor);
    //Center dots
    Paint dotPointer = Paint()..color = theme.primaryIconTheme.color ?? Colors.grey;
    canvas.drawCircle(
      center,
      24,
      dotPointer,
    );
    canvas.drawCircle(center, 23, Paint()..color = theme.backgroundColor);
    canvas.drawCircle(
      center,
      10,
      dotPointer,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
