import 'dart:ffi';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvp_all/src/styles/colors/colors_view.dart';

class ProgressPainter extends CustomPainter {
  late double porciento;

  ProgressPainter(this.porciento);
  void paint(Canvas canvas, Size size) {
    final paint = new Paint();
    paint.strokeWidth = 7;
    paint.color = ColorSelect.splashColor;
    paint.style = PaintingStyle.stroke;
    final w = size.width * 0.50;
    final h = size.height * 0.50;

    canvas.drawCircle(Offset(w, h), min(w, h), paint);

    final paint2 = new Paint();
    paint2.strokeWidth = 6;

    paint2.color = Colors.amber;
    final w2 = size.width * 0.50;
    final h2 = size.height * 0.50;
    paint2.style = PaintingStyle.stroke;
    // paint2.sty

    // const pi = 3.1416;
    double pocentaje = pi * 2 * (porciento / 100);
    // Rect myRect = Offset(w2, h2);
    Rect myRect2 = Rect.fromCircle(center: Offset(w2, h2), radius: h2);
    canvas.drawArc(myRect2, -pi / 2, pocentaje, false, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
