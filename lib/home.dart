
import 'package:animated_round_button_flutter/animated_round_button_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:wave/wave.dart';
import 'package:wave/config.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  static const _backgroundColor = Color(0xFFF15BB5);

  _buildCard({
    required Config config,
    Color? backgroundColor = Colors.transparent,
    DecorationImage? backgroundImage,
    double height = 152.0,
  }) {
    return Container(
      height: height,
      width: double.infinity,
      child: Card(
        elevation: 12.0,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0))),
        child: WaveWidget(
          config: config,
          backgroundColor: backgroundColor,
          backgroundImage: backgroundImage,
          size: Size(double.infinity, double.infinity),
          waveAmplitude: 0,
        ),
      ),
    );
  }
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];
  double marginHorizontal = 16.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.teal ,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Press Button",style: TextStyle(fontSize: 18),),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: (){
      showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                ),
                height: 700,
                child:Container(
                    child: CarouselSlider.builder(
                      options: CarouselOptions(
                        aspectRatio: 1.0,
                        enlargeCenterPage: false,
                        viewportFraction: 1,
                      ),
                      itemCount: (imgList.length / 2).round(),
                      itemBuilder: (context, index, realIdx) {
                        final int first = index * 2;
                        final int second = first + 1;
                        return Row(
                          children: [first, second].map((idx) {
                            return Expanded(
                              flex: 1,
                              child: Container(
                                height: 400,
                                // width: 650,
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                child: Image.network(imgList[idx], fit: BoxFit.cover),
                              ),
                            );
                          }).toList(),
                        );
                      },
                    )),
              );
              },);},
              child:Align(
                child: Container(
                  height: 128,
                  width: 128,
                  decoration:
                  BoxDecoration(shape: BoxShape.circle, boxShadow: [
                    BoxShadow(
                      color: Color(0xFF9B5DE5),
                      blurRadius: 2.0,
                      spreadRadius: -5.0,
                      offset: Offset(0.0, 8.0),
                    ),
                  ]),
                  child: ClipOval(
                    child: WaveWidget(
                      config: CustomConfig(
                        colors: [
                          Color(0xFFFEE440),
                          Color(0xFF00BBF9),
                        ],
                        durations: [
                          5000,
                          4000,
                        ],
                        heightPercentages: [
                          0.65,
                          0.66,
                        ],
                      ),
                      backgroundColor: Color(0xFFF15BB5),
                      size: Size(double.infinity, double.infinity),
                      waveAmplitude: 0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
