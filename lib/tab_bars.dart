

import 'package:flutter/material.dart';
import 'package:prj_001/arc_paint_page.dart';
import 'package:prj_001/circle_paint_page.dart';
import 'package:prj_001/image_paint_page.dart';
import 'package:prj_001/line_paint_page.dart';
import 'package:prj_001/rectangle_paint_page.dart';
import 'package:prj_001/rounded_rectangle_page.dart';
import 'package:prj_001/tabbar_widget.dart';
import 'package:prj_001/triangle_paint_page.dart';
import 'package:prj_001/wave.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) => TabBarWidget(
    title: 'Tab view',
    tabs: [
      Tab(icon: Icon(Icons.waves), text: 'Wave'),
      Tab(icon: Icon(Icons.stacked_line_chart), text: 'Line'),
      Tab(icon: Icon(Icons.crop_landscape), text: 'Square'),
      Tab(icon: Icon(Icons.crop_square), text: 'Curved'),
      Tab(icon: Icon(Icons.circle), text: 'Circle'),
      Tab(icon: Icon(Icons.architecture), text: 'CurvedLine'),
      Tab(icon: Icon(Icons.warning), text: 'Triangle'),
    ],
    children: [
      Wave(),
      LinePaintPage(),
      RectanglePaintPage(),
      RoundedRectanglePaintPage(),
      CirclePaintPage(),
      ArcPaintPage(),
      TrianglePaintPage(),
    ],
  );
}
