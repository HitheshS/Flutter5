import 'package:flutter/material.dart';
import 'calorie_calculation_screen.dart';
import 'calorie_result_screen.dart';
void main() {
  runApp(MaterialApp(
    title: "Calorie Tracker",
    initialRoute: '/',
    routes: {
      '/': (context) => CalorieCalculationScreen(),
      '/result' : (context) => CalorieResultScreen()
    },
  ));
}


