import "package:flutter/material.dart";

const Color _customColor = Color.fromARGB(255, 68, 29, 138);

const List<Color> _colorthemes = [
  _customColor,
  Colors.white,
  Colors.red,
  Colors.black,
  Colors.blue,
  Colors.green,
  Colors.pink
];

class AppTheme {
  final int selectedColor;
  AppTheme({
    this.selectedColor = 0,
  }) : assert(selectedColor >= 0 && selectedColor <= _colorthemes.length - 1,
            'colors must be between 0 and ${_colorthemes.length}');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorthemes[selectedColor],
      // brightness: Brightness.dark,
    );
  }
}
