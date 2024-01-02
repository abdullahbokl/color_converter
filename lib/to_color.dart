import 'exports.dart';

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
    } else if (color is MaterialAccentColor) {
      return _fromMaterialAccentColor(color);
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

  Color _fromMaterialAccentColor(MaterialAccentColor color) {
    return _createColor(color.value);
  }

  Color _fromColorSwatch(ColorSwatch color) {
    return _createColor(color.value);
  }

  Color _fromHSVColor(HSVColor color) {
    return _createColor(color.toColor().value);
  }

  Color _fromHSLColor(HSLColor color) {
    return _createColor(color.toColor().value);
  }
}
