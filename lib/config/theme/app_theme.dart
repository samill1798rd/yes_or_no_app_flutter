import 'package:flutter/material.dart';

const Color _customColor = Colors.green;

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.yellow,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;

  AppTheme({required this.selectedColor})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length,
            'Colors must be betwen 0 and ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, 
        colorSchemeSeed: _colorThemes[selectedColor],
        //brightness: Brightness.dark
    );
        
  }
}
