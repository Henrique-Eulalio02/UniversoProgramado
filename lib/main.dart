import 'package:flutter/material.dart';
import 'package:projeto/pages/loginPage.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trabalho',
      theme: ThemeData(primarySwatch: Colors.red),
      home: LoginPage(),
    );
  }
}
