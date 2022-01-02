import 'package:flutter/material.dart';
import 'input_page.dart';

Color scaffoldColor = Color(0xFF0A0E21);
Color scaffoldBackgroundColor = Color(0xFF0A0E21);

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: scaffoldColor,
        scaffoldBackgroundColor: scaffoldBackgroundColor,
      ),
      home: InputPage(),
    );
  }
}
