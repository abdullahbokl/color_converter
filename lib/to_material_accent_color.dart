import 'exports.dart';

class ToMaterialAccentColor extends ColorConverterInterface {
  @override
  bool supports(Type type) => type == MaterialAccentColor;

  @override
  MaterialAccentColor convert(dynamic color) {
    if (color is MaterialAccentColor) {
      return color;
    } else if (color is String) {
      return _fromHex(color);
    } else if (color is MaterialColor) {
      return _fromMaterialColor(color);
    } else if (color is Color) {
      return _fromColor(color);
    } else if (color is HSVColor) {
      return _fromHSVColor(color);
    } else if (color is HSLColor) {
      return _fromHSLColor(color);
    } else if (color is ColorSwatch) {
      return _fromColorSwatch(color);
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

  MaterialAccentColor _fromHSVColor(HSVColor color) {
    return _createMaterialAccentColor(color.toColor().value);
  }

  MaterialAccentColor _fromHSLColor(HSLColor color) {
    return _createMaterialAccentColor(color.toColor().value);
  }

  MaterialAccentColor _fromColorSwatch(ColorSwatch color) {
    return _createMaterialAccentColor(color.value);
  }
}
