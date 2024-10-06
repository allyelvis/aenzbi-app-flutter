import 'package:flutter/material.dart';
import 'modules/business_module.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aenzbi App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BusinessModule(),
    );
  }
}
