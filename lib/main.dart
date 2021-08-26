import 'dart:io';
import 'package:elegence/Screens/SplashScreen.dart';
import 'package:flutter/material.dart';

import 'data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      theme: ThemeData(fontFamily: 'monbaiti'),
      debugShowCheckedModeBanner: false,
    );
  }
}