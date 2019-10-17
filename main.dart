import 'package:bmi_calculator/screens/result_page.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/screens/InputPage.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF090D22),
        scaffoldBackgroundColor: Color(0xFF0A0E21),

      ),
       initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/resultpage': (context) => ResultsPage(),
      }
    );
  }
}

