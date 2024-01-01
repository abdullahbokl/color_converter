import 'package:flutter/material.dart';

class ColorConverter<T> {
  T convert(dynamic color) {
    // check if

    final converters = [
      ToMaterialColor(),
      ToColor(),
      ToColorSwatch(),
      ToHSVColor(),
      ToHSLColor(),
      ToMaterialAccentColor(),
    ];

    for (var converter in converters) {
      if (converter.supports(T)) {
        return converter.convert(color);
      }
    }

    throw ArgumentError("Unsupported color type: $color");
  }
}

abstract class ColorConverterInterface {
  bool supports(Type type);

  dynamic convert(dynamic color);
}

class ToMaterialColor extends ColorConverterInterface {
  @override
  bool supports(Type type) => type == MaterialColor;

  @override
  MaterialColor convert(dynamic color) {
    if (color is String) {
      return _fromHex(color);
    } else if (color is Color) {
      return _fromColor(color);
    } else {
      throw ArgumentError("Unsupported color type: $color");
    }
  }

  MaterialColor _fromHex(String hexString) {
    hexString = _validateHex(hexString);
    final int value = _parseHex(hexString);
    return _createMaterialColor(value);
  }

  String _validateHex(String colorHexCode) {
    colorHexCode = colorHexCode.trim();
    if (colorHexCode.isEmpty) {
      throw ArgumentError("Hex color string must not be empty");
    }
    if (int.tryParse(colorHexCode.replaceAll("#", ""), radix: 16) == null) {
      throw FormatException("Invalid hex color string: $colorHexCode");
    }
    return colorHexCode;
  }

  int _parseHex(dynamic colorHexCode) {
    return int.parse(
        "0xff${colorHexCode.toString().replaceAll("#", "").trim()}");
  }

  MaterialColor _fromColor(Color color) {
    return _createMaterialColor(color.value);
  }

  MaterialColor _createMaterialColor(int value) {
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
}

class ToColor extends ColorConverterInterface {
  @override
  bool supports(Type type) => type == Color;

  @override
  Color convert(dynamic color) {
    if (color is String) {
      return _fromHex(color);
    } else if (color is MaterialColor) {
      return _fromMaterialColor(color);
    } else if (color is Color) {
      return color;
    } else {
      throw ArgumentError("Unsupported color type: $color");
    }
  }

  Color _fromHex(String hexString) {
    hexString = _validateHex(hexString);
    final int value = _parseHex(hexString);
    return _createColor(value);
  }

  String _validateHex(String colorHexCode) {
    colorHexCode = colorHexCode.trim();
    if (colorHexCode.isEmpty) {
      throw ArgumentError("Hex color string must not be empty");
    }
    if (int.tryParse(colorHexCode.replaceAll("#", ""), radix: 16) == null) {
      throw FormatException("Invalid hex color string: $colorHexCode");
    }
    return colorHexCode;
  }

  int _parseHex(dynamic colorHexCode) {
    return int.parse(
        "0xff${colorHexCode.toString().replaceAll("#", "").trim()}");
  }

  Color _fromMaterialColor(MaterialColor color) {
    return _createColor(color.value);
  }

  Color _createColor(int value) {
    return Color(value);
  }
}

class ToColorSwatch extends ColorConverterInterface {
  @override
  bool supports(Type type) => type == ColorSwatch;

  @override
  ColorSwatch convert(dynamic color) {
    if (color is String) {
      return _fromHex(color);
    } else if (color is MaterialColor) {
      return _fromMaterialColor(color);
    } else if (color is Color) {
      return _fromColor(color);
    } else {
      throw ArgumentError("Unsupported color type: $color");
    }
  }

  ColorSwatch _fromHex(String hexString) {
    hexString = _validateHex(hexString);
    final int value = _parseHex(hexString);
    return _createColorSwatch(value);
  }

  String _validateHex(String colorHexCode) {
    colorHexCode = colorHexCode.trim();
    if (colorHexCode.isEmpty) {
      throw ArgumentError("Hex color string must not be empty");
    }
    if (int.tryParse(colorHexCode.replaceAll("#", ""), radix: 16) == null) {
      throw FormatException("Invalid hex color string: $colorHexCode");
    }
    return colorHexCode;
  }

  int _parseHex(dynamic colorHexCode) {
    return int.parse(
        "0xff${colorHexCode.toString().replaceAll("#", "").trim()}");
  }

  ColorSwatch _fromMaterialColor(MaterialColor color) {
    return _createColorSwatch(color.value);
  }

  ColorSwatch _createColorSwatch(int value) {
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

  ColorSwatch _fromColor(Color color) {
    return _createColorSwatch(color.value);
  }
}

class ToHSVColor extends ColorConverterInterface {
  @override
  bool supports(Type type) => type == HSVColor;

  @override
  HSVColor convert(dynamic color) {
    if (color is String) {
      return _fromHex(color);
    } else if (color is Color) {
      return _fromColor(color);
    } else {
      throw ArgumentError("Unsupported color type: $color");
    }
  }

  HSVColor _fromHex(String hexString) {
    hexString = _validateHex(hexString);
    final int value = _parseHex(hexString);
    return _createHSVColor(value);
  }

  String _validateHex(String colorHexCode) {
    colorHexCode = colorHexCode.trim();
    if (colorHexCode.isEmpty) {
      throw ArgumentError("Hex color string must not be empty");
    }
    if (int.tryParse(colorHexCode.replaceAll("#", ""), radix: 16) == null) {
      throw FormatException("Invalid hex color string: $colorHexCode");
    }
    return colorHexCode;
  }

  int _parseHex(dynamic colorHexCode) {
    return int.parse(
        "0xff${colorHexCode.toString().replaceAll("#", "").trim()}");
  }

  HSVColor _fromColor(Color color) {
    return _createHSVColor(color.value);
  }

  HSVColor _createHSVColor(int value) {
    final int r = (value >> 16) & 0xFF;
    final int g = (value >> 8) & 0xFF;
    final int b = value & 0xFF;
    final double a = ((value >> 24) & 0xFF) / 255.0;
    return HSVColor.fromColor(Color.fromRGBO(r, g, b, a));
  }
}

class ToHSLColor extends ColorConverterInterface {
  @override
  bool supports(Type type) => type == HSLColor;

  @override
  HSLColor convert(dynamic color) {
    if (color is String) {
      return _fromHex(color);
    } else if (color is Color) {
      return _fromColor(color);
    } else {
      throw ArgumentError("Unsupported color type: $color");
    }
  }

  HSLColor _fromHex(String hexString) {
    hexString = _validateHex(hexString);
    final int value = _parseHex(hexString);
    return _createHSLColor(value);
  }

  String _validateHex(String colorHexCode) {
    colorHexCode = colorHexCode.trim();
    if (colorHexCode.isEmpty) {
      throw ArgumentError("Hex color string must not be empty");
    }
    if (int.tryParse(colorHexCode.replaceAll("#", ""), radix: 16) == null) {
      throw FormatException("Invalid hex color string: $colorHexCode");
    }
    return colorHexCode;
  }

  int _parseHex(dynamic colorHexCode) {
    return int.parse(
        "0xff${colorHexCode.toString().replaceAll("#", "").trim()}");
  }

  HSLColor _fromColor(Color color) {
    return _createHSLColor(color.value);
  }

  HSLColor _createHSLColor(int value) {
    final int r = (value >> 16) & 0xFF;
    final int g = (value >> 8) & 0xFF;
    final int b = value & 0xFF;
    final double a = ((value >> 24) & 0xFF) / 255.0;
    return HSLColor.fromColor(Color.fromRGBO(r, g, b, a));
  }
}

class ToMaterialAccentColor extends ColorConverterInterface {
  @override
  bool supports(Type type) => type == MaterialAccentColor;

  @override
  MaterialAccentColor convert(dynamic color) {
    if (color is String) {
      return _fromHex(color);
    } else if (color is MaterialColor) {
      return _fromMaterialColor(color);
    } else if (color is Color) {
      return _fromColor(color);
    } else {
      throw ArgumentError("Unsupported color type: $color");
    }
  }

  MaterialAccentColor _fromHex(String hexString) {
    hexString = _validateHex(hexString);
    final int value = _parseHex(hexString);
    return _createMaterialAccentColor(value);
  }

  String _validateHex(String colorHexCode) {
    colorHexCode = colorHexCode.trim();
    if (colorHexCode.isEmpty) {
      throw ArgumentError("Hex color string must not be empty");
    }
    if (int.tryParse(colorHexCode.replaceAll("#", ""), radix: 16) == null) {
      throw FormatException("Invalid hex color string: $colorHexCode");
    }
    return colorHexCode;
  }

  int _parseHex(dynamic colorHexCode) {
    return int.parse(
        "0xff${colorHexCode.toString().replaceAll("#", "").trim()}");
  }

  MaterialAccentColor _fromMaterialColor(MaterialColor color) {
    return _createMaterialAccentColor(color.value);
  }

  MaterialAccentColor _createMaterialAccentColor(int value) {
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

  MaterialAccentColor _fromColor(Color color) {
    return _createMaterialAccentColor(color.value);
  }
}
