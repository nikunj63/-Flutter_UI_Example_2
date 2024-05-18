// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ui1/ButtonSection.dart';
import 'package:ui1/TextSection.dart';
import 'package:ui1/TitleSection.dart';
import 'package:ui1/imageSection.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'UI Page';
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Scaffold(
        appBar:AppBar(
          title: const Text(appTitle),
        ) ,
        body: SingleChildScrollView(
          child: Column(
            children: [
              ImageSection(
                image:'assets/lake.jpg' 
              ),
             TitleSection(
                name: 'Oeschinen Lake Campground', 
                location: 'Kandersteg, Switzerland'
                ),
                ButtonSection(),
                TextSection(description:
                'Lake Oeschinen lies at the foot of the Blüemlisalp in the '
'Bernese Alps. Situated 1,578 meters above sea level, it '
'is one of the larger Alpine Lakes. A gondola ride from '
'Kandersteg, followed by a half-hour walk through pastures '
'and pine forest, leads you to the lake, which warms to 20 '
'degrees Celsius in the summer. Activities enjoyed here '
'include rowing, and riding the summer toboggan run.',
),
            ],
          ),
        ),
      ),
    );
  }
}