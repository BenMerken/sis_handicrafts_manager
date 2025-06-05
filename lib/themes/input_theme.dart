import 'package:flutter/material.dart';

class InputTheme {
  final ColorScheme appColorScheme;

  const InputTheme({required this.appColorScheme});

  InputBorder _buildBorder(Color color) => OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: BorderSide(color: color, width: 1.0),
  );

  InputDecorationTheme theme() => InputDecorationTheme(
    //Padding
    contentPadding: EdgeInsets.all(16),

    // Label
    floatingLabelBehavior: FloatingLabelBehavior.always,

    // Borders
    border: _buildBorder(appColorScheme.secondary),
    enabledBorder: _buildBorder(appColorScheme.secondary),
    focusedBorder: _buildBorder(appColorScheme.primary),
    errorBorder: _buildBorder(appColorScheme.errorContainer),
    disabledBorder: _buildBorder(Colors.grey),
  );
}
