import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class StarAnimation extends StatefulWidget {
  const StarAnimation({Key? key}) : super(key: key);

  @override
  State<StarAnimation> createState() => _StarAnimationState();
}

class _StarAnimationState extends State<StarAnimation> {
  late ConfettiController _controllerCenter;

  @override
  Path draw_star(Size size) {
    // Method to convert degree to radians
    double degToRad(double deg) => deg * (pi / 180.0);
    const numberOfPoints = 5;
    final halfWidth = size.width / 2;
    final externalRadius = halfWidth;
    final internalRadius = halfWidth / 2.5;
    final degreesPerStep = degToRad(360 / numberOfPoints);
    final halfDegreesPerStep = degreesPerStep / 2;
    final path = Path();
    final fullAngle = degToRad(360);
    path.moveTo(size.width, halfWidth);

    for (double step = 0; step < fullAngle; step += degreesPerStep) {
      path.lineTo(halfWidth + externalRadius * cos(step),
          halfWidth + externalRadius * sin(step));
      path.lineTo(halfWidth + internalRadius * cos(step + halfDegreesPerStep),
          halfWidth + internalRadius * sin(step + halfDegreesPerStep));
    }
    path.close();
    return path;
  }

  @override
  void initState() {
    super.initState();
    _controllerCenter =
        ConfettiController(duration: const Duration(seconds: 4));
    _controllerCenter.play();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      floatingActionButton: FloatingActionButton(onPressed:
          () {
        _controllerCenter.play();
        _controllerCenter.play();
      },

      ),
      body: Center(
        child: Column(
          children: [
            ConfettiWidget(
                createParticlePath: draw_star,
                confettiController: _controllerCenter,
                blastDirectionality: BlastDirectionality.explosive,
                particleDrag: 0.05,
                emissionFrequency: 0.0001,
                numberOfParticles: 100,
                gravity: 0.05,
                shouldLoop: false),
          ],
        ),
      ),
    );
  }
}
