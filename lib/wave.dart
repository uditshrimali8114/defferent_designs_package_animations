// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, prefer_final_fields, unused_field
import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class Wave extends StatelessWidget {
  const Wave({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WaveWidget(
        config: CustomConfig(gradients: [
          [
            Colors.teal,
            Colors.tealAccent,
          ],
          [
            Color(0xff92A3FD),
            Colors.teal,
          ],
          [
            Color(0xff9DCEFF),
            Colors.tealAccent,
          ],
          [
            Colors.teal,
            Color(0xff9DCEFF),
          ],
        ], durations: [
          3500,
          19440,
          10800,
          6000
        ], heightPercentages: [
          0.20,
          0.23,
          0.25,
          0.30
        ]),
        size: Size(double.infinity, double.infinity),
      ),
    );
  }
}
