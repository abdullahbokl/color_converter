import 'exports.dart';

class ToHSVColor extends ColorConverterInterface {
  @override
  bool supports(Type type) => type == HSVColor;

  @override
  HSVColor convert(dynamic color) {
    if (color is String) {
      return _fromHex(color);
    } else if (color is Color) {
      return _fromColor(color);
    } else if (color is HSVColor) {
      return color;
    } else if (color is HSLColor) {
      return _fromHSLColor(color);
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

  HSVColor _fromHSLColor(HSLColor color) {
    return _createHSVColor(color.toColor().value);
  }

  HSVColor _fromMaterialColor(MaterialColor color) {
    return _createHSVColor(color.value);
  }

  HSVColor _fromMaterialAccentColor(MaterialAccentColor color) {
    return _createHSVColor(color.value);
  }

  HSVColor _fromColorSwatch(ColorSwatch color) {
    return _createHSVColor(color.value);
  }
}
