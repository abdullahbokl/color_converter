import 'exports.dart';

class ToMaterialColor extends ColorConverterInterface {
  @override
  bool supports(Type type) => type == MaterialColor;

  @override
  MaterialColor convert(dynamic color) {
    if (color is MaterialColor) {
      return color;
    } else if (color is MaterialAccentColor) {
      return _fromMaterialAccentColor(color);
    } else if (color is String) {
      return _fromHex(color);
    } else if (color is Color) {
      return _fromColor(color);
    } else if (color is ColorSwatch) {
      return _fromColorSwatch(color);
    } else if (color is HSVColor) {
      return _fromHSVColor(color);
    } else if (color is HSLColor) {
      return _fromHSLColor(color);
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

  MaterialColor _fromMaterialAccentColor(MaterialAccentColor color) {
    return _createMaterialColor(color.value);
  }

  MaterialColor _fromColorSwatch(ColorSwatch color) {
    return _createMaterialColor(color.value);
  }

  MaterialColor _fromHSVColor(HSVColor color) {
    return _createMaterialColor(color.toColor().value);
  }

  MaterialColor _fromHSLColor(HSLColor color) {
    return _createMaterialColor(color.toColor().value);
  }
}
