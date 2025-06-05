import 'package:flutter/material.dart';
import 'package:sis_handicrafts_manager/pages/catalogues/page.dart';
import 'package:sis_handicrafts_manager/themes/input_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appColorScheme = ColorScheme.fromSeed(seedColor: Colors.green);

    return MaterialApp(
      title: "Sis's Handicrafts Manager",
      theme: ThemeData(
        colorScheme: appColorScheme,
        inputDecorationTheme:
            InputTheme(appColorScheme: appColorScheme).theme(),
      ),
      home: const CataloguesPage(),
    );
  }
}
