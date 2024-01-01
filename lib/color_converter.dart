import 'package:flutter/material.dart';

// doc

// This class is used to convert hex color code to different color types.
// It supports conversion to Color, ColorSwatch, HSVColor, HSLColor, MaterialColor and MaterialAccentColor.
// it can be used as follows:

// import 'package:color_converter/color_converter.dart';
// Color color = ColorConverter.hexToColor<Color>('#FF6F00');
// ColorSwatch colorSwatch = ColorConverter.hexToColor<ColorSwatch>('#FF6F00');
// HSVColor hsvColor = ColorConverter.hexToColor<HSVColor>('#FF6F00');
// HSLColor hslColor = ColorConverter.hexToColor<HSLColor>('#FF6F00');
// MaterialColor materialColor = ColorConverter.hexToColor<MaterialColor>('#FF6F00');
// MaterialAccentColor materialAccentColor = ColorConverter.hexToColor<MaterialAccentColor>('#FF6F00');

class ColorConverter {
  static T hexToColor<T>(dynamic colorHexCode) {
    _validateHex(colorHexCode);
    final int value = _parseHex(colorHexCode);

    if (T == Color) {
      return _createColor(value) as T;
    } else if (T == ColorSwatch) {
      return _createColorSwatch(value) as T;
    } else if (T == HSVColor) {
      return _createHSVColor(value) as T;
    } else if (T == HSLColor) {
      return _createHSLColor(value) as T;
    } else if (T == MaterialColor) {
      return _createMaterialColor(value) as T;
    } else if (T == MaterialAccentColor) {
      return _createMaterialAccentColor(value) as T;
    } else {
      throw ArgumentError("Unsupported color type: $T");
    }
  }

  static void _validateHex(dynamic colorHexCode) {
    colorHexCode = colorHexCode.toString().trim();
    if (colorHexCode.isEmpty) {
      throw ArgumentError("Hex color string must not be empty");
    }
    if (int.tryParse(colorHexCode.replaceAll("#", ""), radix: 16) == null) {
      throw FormatException("Invalid hex color string: $colorHexCode");
    }
  }

  static int _parseHex(dynamic colorHexCode) {
    return int.parse(
        "0xff${colorHexCode.toString().replaceAll("#", "").trim()}");
  }

  static Color _createColor(int value) {
    return Color(value);
  }

  static ColorSwatch _createColorSwatch(int value) {
    final int r = (value >> 16) & 0xFF;
    final int g = (value >> 8) & 0xFF;
    final int b = value & 0xFF;

    return ColorSwatch(value, {
      50: Color.fromRGBO(r, g, b, .1),
      100: Color.fromRGBO(r, g, b, .2),
      200: Color.fromRGBO(r, g, b, .3),
      300: Color.fromRGBO(r, g, b, .4),
      400: Color.fromRGBO(r, g, b, .5),
      500: Color.fromRGBO(r, g, b, .6),
      600: Color.fromRGBO(r, g, b, .7),
      700: Color.fromRGBO(r, g, b, .8),
      800: Color.fromRGBO(r, g, b, .9),
      900: Color.fromRGBO(r, g, b, 1),
    });
  }

  static HSVColor _createHSVColor(int value) {
    final int r = (value >> 16) & 0xFF;
    final int g = (value >> 8) & 0xFF;
    final int b = value & 0xFF;
    final double a = ((value >> 24) & 0xFF) / 255.0;
    return HSVColor.fromColor(Color.fromRGBO(r, g, b, a));
  }

  static HSLColor _createHSLColor(int value) {
    final int r = (value >> 16) & 0xFF;
    final int g = (value >> 8) & 0xFF;
    final int b = value & 0xFF;
    final double a = ((value >> 24) & 0xFF) / 255.0;
    return HSLColor.fromColor(Color.fromRGBO(r, g, b, a));
  }

  static MaterialColor _createMaterialColor(int value) {
    final int r = (value >> 16) & 0xFF;
    final int g = (value >> 8) & 0xFF;
    final int b = value & 0xFF;

    return MaterialColor(value, {
      50: Color.fromRGBO(r, g, b, .1),
      100: Color.fromRGBO(r, g, b, .2),
      200: Color.fromRGBO(r, g, b, .3),
      300: Color.fromRGBO(r, g, b, .4),
      400: Color.fromRGBO(r, g, b, .5),
      500: Color.fromRGBO(r, g, b, .6),
      600: Color.fromRGBO(r, g, b, .7),
      700: Color.fromRGBO(r, g, b, .8),
      800: Color.fromRGBO(r, g, b, .9),
      900: Color.fromRGBO(r, g, b, 1),
    });
  }

  static MaterialAccentColor _createMaterialAccentColor(int value) {
    final int r = (value >> 16) & 0xFF;
    final int g = (value >> 8) & 0xFF;
    final int b = value & 0xFF;

    return MaterialAccentColor(value, {
      100: Color.fromRGBO(r, g, b, .1),
      200: Color.fromRGBO(r, g, b, .2),
      400: Color.fromRGBO(r, g, b, .4),
      700: Color.fromRGBO(r, g, b, .7),
    });
  }
}
