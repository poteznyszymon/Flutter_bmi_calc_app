import 'package:bmi_app/pages/home_page.dart';
//import 'package:bmi_app/pages/results_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      //routes: {
      //  '/results_page': (context) => const ResultsPage(),
      //},
    );
  }
}
