import 'package:doctorhub/screens/home.dart';
import 'package:flutter/material.dart';

import 'design_system/colors.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doctor appointment',
      theme: ThemeData(
        primarySwatch: swatch,
      ),
      home:
           HomePage(),
    );
  }
}

