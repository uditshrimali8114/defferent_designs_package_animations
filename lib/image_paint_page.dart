// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, prefer_final_fields, unused_field, library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:flutter/services.dart';

class ImagePaintPage extends StatefulWidget {
  const ImagePaintPage({super.key});

  @override
  _ImagePaintPageState createState() => _ImagePaintPageState();
}

class _ImagePaintPageState extends State<ImagePaintPage> {
  ui.Image? image;

  @override
  void initState() {
    super.initState();

    loadImage('assets/image.jpg');
  }

  Future loadImage(String path) async {
    final data = await rootBundle.load(path);
    final bytes = data.buffer.asUint8List();
    final image = await decodeImageFromList(bytes);

    setState(() => this.image = image);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.teal,

    body: Center(
          child: image == null
              ? CircularProgressIndicator()
              : SizedBox(
                  height: 300,
                  width: 300,
                  child: FittedBox(
                    child: SizedBox(
                      width: image!.width.toDouble(),
                      height: image!.height.toDouble(),
                      child: CustomPaint(
                        painter: ImagePainter(image!),
                      ),
                    ),
                  ),
                ),
        ),
      );
}

class ImagePainter extends CustomPainter {
  final ui.Image image;

  const ImagePainter(this.image);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    canvas.drawImage(image, Offset.zero, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
