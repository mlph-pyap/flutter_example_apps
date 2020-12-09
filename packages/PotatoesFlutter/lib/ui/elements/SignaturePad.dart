
library PotatoesFlutter;
import 'package:flutter/material.dart';
import 'dart:ui' as ui;


class SignaturePad extends CustomPainter{

  List<Offset> paths = new List<Offset>();

  SignaturePad(List<Offset> points){
    paths = points;
  }

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = Colors.black
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5.0
      ..style = PaintingStyle.stroke;

   // for (Offset p in paths) {
      //?canvas.drawPath(p, paint);
   // }
    for (int i = 0; i < paths.length - 1; i++) {
      if (paths[i] != null && paths[i + 1] != null)
        canvas.drawLine(paths[i], paths[i + 1], paint);
    }
  }

  bool shouldRepaint(SignaturePad other) => other.paths != paths;


}