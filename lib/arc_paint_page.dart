// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, prefer_final_fields, unused_field
import 'package:flutter/material.dart';

class ArcPaintPage extends StatelessWidget {
  const ArcPaintPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.teal,

    body: Center(
          child: Container(
            color: Colors.white,
            width: 300,
            height: 300,
            child: CustomPaint(
              painter: ArcPainter(),
            ),
          ),
        ),
      );
}

class ArcPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Color(0xff9DCEFF)
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke;

    final arc1 = Path();
    arc1.moveTo(size.width * 0.2, size.height * 0.2);
    arc1.arcToPoint(
      Offset(size.width * 0.8, size.height * 0.2),
      radius: Radius.circular(150),
      clockwise: false,
    );

    canvas.drawPath(arc1, paint);

    canvas.drawPath(arc1, paint);

    final arc2 = Path();
    arc2.moveTo(size.width * 0.2, size.height * 0.8);
    arc2.arcToPoint(
      Offset(size.width * 0.8, size.height * 0.8),
      radius: Radius.circular(150),
    );

    canvas.drawPath(arc2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
