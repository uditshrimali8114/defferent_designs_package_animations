// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, prefer_final_fields, unused_field
import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  final String title;
  final List<Tab> tabs;
  final List<Widget> children;

   TabBarWidget({
    Key? key,
    required this.title,
    required this.tabs,
    required this.children,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: tabs.length,
    child: Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {

        },),
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [ Colors.teal,Colors.tealAccent],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
          ),
        ),
        bottom: TabBar(
          isScrollable: true,
          indicatorColor: Colors.white,
          indicatorWeight: 5,
          tabs: tabs,
        ),
        elevation: 20,
        titleSpacing: 20,
      ),
      body: TabBarView(children: children),
    ),
  );
}
