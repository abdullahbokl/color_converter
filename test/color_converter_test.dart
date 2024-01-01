import 'package:color_converter/color_converter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ColorConverter Tests', () {
    test('Hex to Color Conversion', () {
      String hexString = '#FF6F00';
      const Color expectedColor = Color(0xFFFF6F00);

      Color color = ColorConverter<Color>().convert(hexString);
      expect(color, equals(expectedColor));
    });

    test('Hex to ColorSwatch Conversion', () {
      String hexString = '#FF6F00';
      ColorSwatch colorSwatch =
          ColorConverter<ColorSwatch>().convert(hexString);
      expect(colorSwatch, isA<ColorSwatch>());
    });

    test('Hex to HSVColor Conversion', () {
      String hexString = '#FF6F00';
      HSVColor hsvColor = ColorConverter<HSVColor>().convert(hexString);
      expect(hsvColor, isA<HSVColor>());
    });

    test('Hex to HSLColor Conversion', () {
      String hexString = '#FF6F00';
      HSLColor hslColor = ColorConverter<HSLColor>().convert(hexString);
      expect(hslColor, isA<HSLColor>());
    });

    test('Hex to MaterialColor Conversion', () {
      String hexString = '#FF6F00';
      MaterialColor materialColor =
          ColorConverter<MaterialColor>().convert(hexString);
      expect(materialColor, isA<MaterialColor>());
    });

    test('Hex to MaterialAccentColor Conversion', () {
      String hexString = '#FF6F00';
      MaterialAccentColor materialAccentColor =
          ColorConverter<MaterialAccentColor>().convert(hexString);
      expect(materialAccentColor, isA<MaterialAccentColor>());
    });

    test('Invalid Hex String', () {
      String invalidHex = 'invalid_hex';
      expect(() => ColorConverter<Color>().convert(invalidHex),
          throwsFormatException,
          reason: 'Invalid hex string should throw FormatException');
    });

    test('Unsupported Color Type', () {
      String hexString = '#FF5733';
      expect(() => ColorConverter<double>().convert(hexString),
          throwsArgumentError,
          reason: 'Unsupported color type should throw ArgumentError');
    });
  });

  group('ColorConverter Tests', () {
    test('Hex to Color Conversion', () {
      String hexString = '#FF6F00';
      const Color expectedColor = Color(0xFFFF6F00);

      Color color = ColorConverter<Color>().convert(hexString);
      expect(color, equals(expectedColor));
    });

    test('Hex to ColorSwatch Conversion', () {
      String hexString = '#FF6F00';
      ColorSwatch colorSwatch =
          ColorConverter<ColorSwatch>().convert(hexString);
      expect(colorSwatch, isA<ColorSwatch>());
    });

    test('Hex to HSVColor Conversion', () {
      String hexString = '#FF6F00';
      HSVColor hsvColor = ColorConverter<HSVColor>().convert(hexString);
      expect(hsvColor, isA<HSVColor>());
    });

    test('Hex to HSLColor Conversion', () {
      String hexString = '#FF6F00';
      HSLColor hslColor = ColorConverter<HSLColor>().convert(hexString);
      expect(hslColor, isA<HSLColor>());
    });

    test('Hex to MaterialColor Conversion', () {
      String hexString = '#FF6F00';
      MaterialColor materialColor =
          ColorConverter<MaterialColor>().convert(hexString);
      expect(materialColor, isA<MaterialColor>());
    });

    test('Hex to MaterialAccentColor Conversion', () {
      String hexString = '#FF6F00';
      MaterialAccentColor materialAccentColor =
          ColorConverter<MaterialAccentColor>().convert(hexString);
      expect(materialAccentColor, isA<MaterialAccentColor>());
    });

    test('Invalid Hex String', () {
      String invalidHex = 'invalid_hex';
      expect(() => ColorConverter<Color>().convert(invalidHex),
          throwsFormatException,
          reason: 'Invalid hex string should throw FormatException');
    });

    test('Unsupported Color Type', () {
      String hexString = '#FF5733';
      expect(() => ColorConverter<double>().convert(hexString),
          throwsArgumentError,
          reason: 'Unsupported color type should throw ArgumentError');
    });
  });
}
