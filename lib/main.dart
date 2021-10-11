import 'package:doctorhub/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'design_system/colors.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final newTextTheme = Theme.of(context).textTheme.apply(
      bodyColor: Color(0xff222B45),
      displayColor: Color(0xff222B45),
    );
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doctor appointment',

      theme: ThemeData(
        textTheme: newTextTheme,
        scaffoldBackgroundColor: const Color(0xfff2f2f2),
        primarySwatch: swatch,
      ),
      home:const HomePage(),
    );
  }
}

