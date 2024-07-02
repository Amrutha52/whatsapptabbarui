import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tabarssample/home_screen/HomeScreen.dart';

import 'MyHttpOverrides.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: HomeScreen(),
    );
  }
}


