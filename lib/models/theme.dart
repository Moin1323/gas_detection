import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      surface: const Color(0xFFF5F5F5),  // Light shade of white (off-white)
      primary: Colors.black,  // Primary color as black
      secondary: Colors.white, // Secondary color as white
      tertiary: const Color(0xFF333333), // Dark gray (charcoal) for tertiary
      onTertiary: Colors.white, // Text on tertiary (dark background) will be white
      onSurface: const Color(0xFF212121), // Dark gray text on surface (light background)
    ));

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightMode;

  ThemeData get themeData => _themeData;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  // List of gradients using shades of black and white
  List<LinearGradient> get gradients => [
    const LinearGradient(
      colors: [
        Color(0xFF212121), // Dark gray (charcoal) to light gray
        Color(0xFFF5F5F5), // Light gray (off-white)
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    const LinearGradient(
      colors: [
        Colors.white, // White to light gray gradient
        Color(0xFFF5F5F5),
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    const LinearGradient(
      colors: [Colors.white], // Just pure white
    ),
    const LinearGradient(
      colors: [Color(0xFF212121), Colors.white], // Dark gray to white gradient
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    const LinearGradient(
      colors: [Color(0xFF333333), Color(0xFFF5F5F5)], // Charcoal to off-white gradient
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    const LinearGradient(
      colors: [Color(0xFF212121), Colors.white], // Dark gray to white gradient with rotation
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      transform: GradientRotation(5),
    ),
  ];
}
