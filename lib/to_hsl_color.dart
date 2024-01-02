import 'exports.dart';

class ToHSLColor extends ColorConverterInterface {
  @override
  bool supports(Type type) => type == HSLColor;

  @override
  HSLColor convert(dynamic color) {
    if (color is String) {
      return _fromHex(color);
    } else if (color is Color) {
      return _fromColor(color);
    } else if (color is HSVColor) {
      return _fromHSVColor(color);
    } else if (color is HSLColor) {
      return color;
    } else if (color is MaterialColor) {
      return _fromMaterialColor(color);
    } else if (color is MaterialAccentColor) {
      return _fromMaterialAccentColor(color);
    } else if (color is ColorSwatch) {
      return _fromColorSwatch(color);
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

  HSLColor _fromHSVColor(HSVColor color) {
    return _createHSLColor(color.toColor().value);
  }

  HSLColor _fromMaterialColor(MaterialColor color) {
    return _createHSLColor(color.value);
  }

  HSLColor _fromMaterialAccentColor(MaterialAccentColor color) {
    return _createHSLColor(color.value);
  }

  HSLColor _fromColorSwatch(ColorSwatch color) {
    return _createHSLColor(color.value);
  }
}
