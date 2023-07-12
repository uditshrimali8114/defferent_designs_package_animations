// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, prefer_final_fields, unused_field
import 'package:flutter/material.dart';

class CirclePaintPage extends StatelessWidget {
  const CirclePaintPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.teal,

    body: Center(
          child: Container(
            color: Colors.white,
            width: 300,
            height: 300,
            child: CustomPaint(
              painter: CirclePainter(),
            ),
          ),
        ),
      );
}

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);

    final paint = Paint()
      ..color = Color(0xff92A3FD)
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(
      center,
      size.width * 1 / 4,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
