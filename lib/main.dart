import 'package:flutter/material.dart';
import 'package:sis_handicrafts_manager/ui/catalogues_overview/widgets/catalogues_overview_screen.dart';
import 'package:sis_handicrafts_manager/ui/core/themes/input_theme.dart';

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
      home: const CataloguesOverviewScreen(),
    );
  }
}
