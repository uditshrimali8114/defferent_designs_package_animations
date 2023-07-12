// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, prefer_final_fields, unused_field
import 'package:flutter/material.dart';

class TrianglePaintPage extends StatelessWidget {
  const TrianglePaintPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.teal,

    body: Center(
          child: Container(
            color: Colors.white,
            width: 300,
            height: 300,
            child: CustomPaint(
              painter: TrianglePainter(),
            ),
          ),
        ),
      );
}

class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Color(0xff92A3FD)
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke;

    final path = Path();
    path.moveTo(size.width * 1 / 2, size.height * 1 / 4);
    path.lineTo(size.width * 1 / 6, size.height * 3 / 4);
    path.lineTo(size.width * 5 / 6, size.height * 3 / 4);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
