import 'package:flutter/material.dart';
import 'package:projeto/pages/loginPage.dart';
import 'package:projeto/pages/onBoarding1.dart';
import 'package:projeto/pages/onBoarding2.dart';
import 'package:projeto/pages/onBoarding3.dart';
import 'package:projeto/pages/onBoarding4.dart';
import 'package:projeto/pages/onBoarding5.dart';
import 'package:projeto/pages/onBoarding6.dart';
import 'package:projeto/pages/onBoarding7.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trabalho',
      theme: ThemeData(primarySwatch: Colors.red),
      home: OnBoarding1(),
    );
  }
}
