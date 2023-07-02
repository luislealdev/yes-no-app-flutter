import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(0, 255, 52, 52);

List<Color> _themeColors = [
  _customColor,
  Colors.yellow,
  Colors.blue,
  Colors.pink,
  Colors.brown,
  Colors.amber
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor > 0 && selectedColor < _themeColors.length,
            "Colors must be between 0 and ${_themeColors.length}");

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true,
        colorSchemeSeed: _themeColors[selectedColor],
        brightness: Brightness.dark);
  }
}
