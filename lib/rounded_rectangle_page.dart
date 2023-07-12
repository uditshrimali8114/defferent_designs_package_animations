// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, prefer_final_fields, unused_field
import 'package:flutter/material.dart';

class RoundedRectanglePaintPage extends StatelessWidget {
  const RoundedRectanglePaintPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.teal,

    body: Center(
          child: Container(
            color: Colors.white,
            width: 300,
            height: 300,
            child: CustomPaint(
              painter: RoundedRectanglePainter(),
            ),
          ),
        ),
      );
}

class RoundedRectanglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Color(0xff9DCEFF)
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke;

    final a = Offset(size.width * 1 / 6, size.height * 1 / 4);
    final b = Offset(size.width * 5 / 6, size.height * 3 / 4);
    final rect = Rect.fromPoints(a, b);
    final radius = Radius.circular(32);

    canvas.drawRRect(RRect.fromRectAndRadius(rect, radius), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
