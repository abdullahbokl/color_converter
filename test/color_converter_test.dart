import 'package:color_converter/color_converter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ColorConverter Tests', () {
    test('Hex to Color Conversion', () {
      // Test case 1: Hex to Color
      String hexString = '#FF6F00';

      Color color = ColorConverter.hexToColor<Color>(hexString);
      expect(color, equals(const Color(0xFFFF6F00)));

      // Test case 2: Hex to ColorSwatch
      ColorSwatch colorSwatch =
          ColorConverter.hexToColor<ColorSwatch>(hexString);
      expect(colorSwatch, isA<ColorSwatch>());

      // Test case 3: Hex to HSVColor
      HSVColor hsvColor = ColorConverter.hexToColor<HSVColor>(hexString);
      expect(hsvColor, isA<HSVColor>());

      // Test case 4: Hex to HSLColor
      HSLColor hslColor = ColorConverter.hexToColor<HSLColor>(hexString);
      expect(hslColor, isA<HSLColor>());

      // Test case 5: Hex to MaterialColor
      MaterialColor materialColor =
          ColorConverter.hexToColor<MaterialColor>(hexString);
      expect(materialColor, isA<MaterialColor>());

      // Test case 6: Hex to MaterialAccentColor
      MaterialAccentColor materialAccentColor =
          ColorConverter.hexToColor<MaterialAccentColor>(hexString);
      expect(materialAccentColor, isA<MaterialAccentColor>());
    });

    test('Invalid Hex String', () {
      // Test case: Invalid hex string
      String invalidHex = 'invalid_hex';
      expect(() => ColorConverter.hexToColor<Color>(invalidHex),
          throwsFormatException);
    });

    test('Unsupported Color Type', () {
      // Test case: Unsupported color type
      String hexString = '#FF5733';
      expect(() => ColorConverter.hexToColor<double>(hexString),
          throwsArgumentError);
    });
  });
}
