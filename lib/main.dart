import 'package:flutter/material.dart';
import 'package:sis_handicrafts_manager/pages/overview/page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sis's Handicrafts Manager",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const OverviewPage(title: 'Overview'),
    );
  }
}
