import 'package:color_converter/exports.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // ToMaterialColor Tests
  group('ToMaterialColor Hex Tests', () {
    test('Hex to MaterialColor Conversion', () {
      String hexString = '#FF6F00';
      MaterialColor materialColor = ToMaterialColor().convert(hexString);
      expect(materialColor, isA<MaterialColor>());
    });

    test('Invalid Hex String', () {
      String invalidHex = 'invalid_hex';
      expect(() => ToMaterialColor().convert(invalidHex), throwsFormatException,
          reason: 'Invalid hex string should throw FormatException');
    });
  });

  group('ToMaterialColor Color Tests', () {
    test('Color to MaterialColor Conversion', () {
      Color color = const Color(0x00ff6f00);
      MaterialColor materialColor = ToMaterialColor().convert(color);
      expect(materialColor, isA<MaterialColor>());
    });

    test('MaterialColor to MaterialColor Conversion', () {
      MaterialColor inputMaterialColor = Colors.orange;
      MaterialColor materialColor =
          ToMaterialColor().convert(inputMaterialColor);
      expect(materialColor, equals(inputMaterialColor));
    });
  });

  group('ToMaterialColor MaterialAccentColor Tests', () {
    test('MaterialAccentColor to MaterialColor Conversion', () {
      MaterialAccentColor materialAccentColor = Colors.orangeAccent;
      MaterialColor materialColor =
          ToMaterialColor().convert(materialAccentColor);
      expect(materialColor, isA<MaterialColor>());
    });
  });

  group('ToMaterialColor ColorSwatch Tests', () {
    test('ColorSwatch to MaterialColor Conversion', () {
      ColorSwatch colorSwatch = Colors.orange;
      MaterialColor materialColor = ToMaterialColor().convert(colorSwatch);
      expect(materialColor, isA<MaterialColor>());
    });
  });

  group('ToMaterialColor HSVColor Tests', () {
    test('HSVColor to MaterialColor Conversion', () {
      HSVColor hsvColor = HSVColor.fromColor(Colors.orange);
      MaterialColor materialColor = ToMaterialColor().convert(hsvColor);
      expect(materialColor, isA<MaterialColor>());
    });
  });

  group('ToMaterialColor HSLColor Tests', () {
    test('HSLColor to MaterialColor Conversion', () {
      HSLColor hslColor = HSLColor.fromColor(Colors.orange);
      MaterialColor materialColor = ToMaterialColor().convert(hslColor);
      expect(materialColor, isA<MaterialColor>());
    });
  });

  group('ToMaterialColor Unsupported Type Tests', () {
    test('Unsupported Color Type', () {
      double unsupportedColor = 123.45;
      expect(() => ToMaterialColor().convert(unsupportedColor),
          throwsArgumentError,
          reason: 'Unsupported color type should throw ArgumentError');
    });
  });

  // ToColor Tests
  group('ToMaterialColor Hex Tests', () {
    test('Hex to MaterialColor Conversion', () {
      String hexString = '#FF6F00';
      MaterialColor materialColor = ToMaterialColor().convert(hexString);
      expect(materialColor, isA<MaterialColor>());
    });

    test('Invalid Hex String', () {
      String invalidHex = 'invalid_hex';
      expect(() => ToMaterialColor().convert(invalidHex), throwsFormatException,
          reason: 'Invalid hex string should throw FormatException');
    });
  });

  group('ToMaterialColor Color Tests', () {
    test('Color to MaterialColor Conversion', () {
      Color color = const Color(0x00ff6f00);
      MaterialColor materialColor = ToMaterialColor().convert(color);
      expect(materialColor, isA<MaterialColor>());
    });

    test('MaterialColor to MaterialColor Conversion', () {
      MaterialColor inputMaterialColor = Colors.orange;
      MaterialColor materialColor =
          ToMaterialColor().convert(inputMaterialColor);
      expect(materialColor, equals(inputMaterialColor));
    });
  });

  group('ToMaterialColor MaterialAccentColor Tests', () {
    test('MaterialAccentColor to MaterialColor Conversion', () {
      MaterialAccentColor materialAccentColor = Colors.orangeAccent;
      MaterialColor materialColor =
          ToMaterialColor().convert(materialAccentColor);
      expect(materialColor, isA<MaterialColor>());
    });
  });

  group('ToMaterialColor ColorSwatch Tests', () {
    test('ColorSwatch to MaterialColor Conversion', () {
      ColorSwatch colorSwatch = Colors.orange;
      MaterialColor materialColor = ToMaterialColor().convert(colorSwatch);
      expect(materialColor, isA<MaterialColor>());
    });
  });

  group('ToMaterialColor HSVColor Tests', () {
    test('HSVColor to MaterialColor Conversion', () {
      HSVColor hsvColor = HSVColor.fromColor(Colors.orange);
      MaterialColor materialColor = ToMaterialColor().convert(hsvColor);
      expect(materialColor, isA<MaterialColor>());
    });
  });

  group('ToMaterialColor HSLColor Tests', () {
    test('HSLColor to MaterialColor Conversion', () {
      HSLColor hslColor = HSLColor.fromColor(Colors.orange);
      MaterialColor materialColor = ToMaterialColor().convert(hslColor);
      expect(materialColor, isA<MaterialColor>());
    });
  });

  group('ToMaterialColor Unsupported Type Tests', () {
    test('Unsupported Color Type', () {
      double unsupportedColor = 123.45;
      expect(() => ToMaterialColor().convert(unsupportedColor),
          throwsArgumentError,
          reason: 'Unsupported color type should throw ArgumentError');
    });
  });

  // ToColorSwatch
  group('ToColorSwatch Hex Tests', () {
    test('Hex to ColorSwatch Conversion', () {
      String hexString = '#FF6F00';
      ColorSwatch colorSwatch = ToColorSwatch().convert(hexString);
      expect(colorSwatch, isA<ColorSwatch>());
    });

    test('Invalid Hex String', () {
      String invalidHex = 'invalid_hex';
      expect(() => ToColorSwatch().convert(invalidHex), throwsFormatException,
          reason: 'Invalid hex string should throw FormatException');
    });
  });

  group('ToColorSwatch Color Tests', () {
    test('Color to ColorSwatch Conversion', () {
      Color color = const Color(0x00ff6f00);
      ColorSwatch colorSwatch = ToColorSwatch().convert(color);
      expect(colorSwatch, isA<ColorSwatch>());
    });

    test('MaterialColor to ColorSwatch Conversion', () {
      MaterialColor materialColor = Colors.orange;
      ColorSwatch colorSwatch = ToColorSwatch().convert(materialColor);
      expect(colorSwatch, isA<ColorSwatch>());
    });

    test('MaterialAccentColor to ColorSwatch Conversion', () {
      MaterialAccentColor materialAccentColor = Colors.orangeAccent;
      ColorSwatch colorSwatch = ToColorSwatch().convert(materialAccentColor);
      expect(colorSwatch, isA<ColorSwatch>());
    });
  });

  group('ToColorSwatch MaterialAccentColor Tests', () {
    test('MaterialAccentColor to ColorSwatch Conversion', () {
      MaterialAccentColor materialAccentColor = Colors.orangeAccent;
      ColorSwatch colorSwatch = ToColorSwatch().convert(materialAccentColor);
      expect(colorSwatch, isA<ColorSwatch>());
    });
  });

  group('ToColorSwatch MaterialColor Tests', () {
    test('MaterialColor to ColorSwatch Conversion', () {
      MaterialColor materialColor = Colors.orange;
      ColorSwatch colorSwatch = ToColorSwatch().convert(materialColor);
      expect(colorSwatch, isA<ColorSwatch>());
    });
  });

  group('ToColorSwatch HSVColor Tests', () {
    test('HSVColor to ColorSwatch Conversion', () {
      HSVColor hsvColor = HSVColor.fromColor(Colors.orange);
      ColorSwatch colorSwatch = ToColorSwatch().convert(hsvColor);
      expect(colorSwatch, isA<ColorSwatch>());
    });
  });

  group('ToColorSwatch HSLColor Tests', () {
    test('HSLColor to ColorSwatch Conversion', () {
      HSLColor hslColor = HSLColor.fromColor(Colors.orange);
      ColorSwatch colorSwatch = ToColorSwatch().convert(hslColor);
      expect(colorSwatch, isA<ColorSwatch>());
    });
  });

  group('ToColorSwatch Unsupported Type Tests', () {
    test('Unsupported Color Type', () {
      double unsupportedColor = 123.45;
      expect(
          () => ToColorSwatch().convert(unsupportedColor), throwsArgumentError,
          reason: 'Unsupported color type should throw ArgumentError');
    });
  });

  // ToHSVColor
  group('ToHSVColor Hex Tests', () {
    test('Hex to HSVColor Conversion', () {
      String hexString = '#FF6F00';
      HSVColor hsvColor = ToHSVColor().convert(hexString);
      expect(hsvColor, isA<HSVColor>());
    });

    test('Invalid Hex String', () {
      String invalidHex = 'invalid_hex';
      expect(() => ToHSVColor().convert(invalidHex), throwsFormatException,
          reason: 'Invalid hex string should throw FormatException');
    });
  });

  group('ToHSVColor Color Tests', () {
    test('Color to HSVColor Conversion', () {
      Color color = const Color(0x00ff6f00);
      HSVColor hsvColor = ToHSVColor().convert(color);
      expect(hsvColor, isA<HSVColor>());
    });

    test('MaterialColor to HSVColor Conversion', () {
      MaterialColor materialColor = Colors.orange;
      HSVColor hsvColor = ToHSVColor().convert(materialColor);
      expect(hsvColor, isA<HSVColor>());
    });

    test('MaterialAccentColor to HSVColor Conversion', () {
      MaterialAccentColor materialAccentColor = Colors.orangeAccent;
      HSVColor hsvColor = ToHSVColor().convert(materialAccentColor);
      expect(hsvColor, isA<HSVColor>());
    });
  });

  group('ToHSVColor MaterialAccentColor Tests', () {
    test('MaterialAccentColor to HSVColor Conversion', () {
      MaterialAccentColor materialAccentColor = Colors.orangeAccent;
      HSVColor hsvColor = ToHSVColor().convert(materialAccentColor);
      expect(hsvColor, isA<HSVColor>());
    });
  });

  group('ToHSVColor MaterialColor Tests', () {
    test('MaterialColor to HSVColor Conversion', () {
      MaterialColor materialColor = Colors.orange;
      HSVColor hsvColor = ToHSVColor().convert(materialColor);
      expect(hsvColor, isA<HSVColor>());
    });
  });

  group('ToHSVColor ColorSwatch Tests', () {
    test('ColorSwatch to HSVColor Conversion', () {
      ColorSwatch colorSwatch = Colors.orange;
      HSVColor hsvColor = ToHSVColor().convert(colorSwatch);
      expect(hsvColor, isA<HSVColor>());
    });
  });

  group('ToHSVColor HSLColor Tests', () {
    test('HSLColor to HSVColor Conversion', () {
      HSLColor hslColor = HSLColor.fromColor(Colors.orange);
      HSVColor hsvColor = ToHSVColor().convert(hslColor);
      expect(hsvColor, isA<HSVColor>());
    });
  });

  group('ToHSVColor Unsupported Type Tests', () {
    test('Unsupported Color Type', () {
      double unsupportedColor = 123.45;
      expect(() => ToHSVColor().convert(unsupportedColor), throwsArgumentError,
          reason: 'Unsupported color type should throw ArgumentError');
    });
  });

  // ToHSLColor
  group('ToHSLColor Hex Tests', () {
    test('Hex to HSLColor Conversion', () {
      String hexString = '#FF6F00';
      HSLColor hslColor = ToHSLColor().convert(hexString);
      expect(hslColor, isA<HSLColor>());
    });

    test('Invalid Hex String', () {
      String invalidHex = 'invalid_hex';
      expect(() => ToHSLColor().convert(invalidHex), throwsFormatException,
          reason: 'Invalid hex string should throw FormatException');
    });
  });

  group('ToHSLColor Color Tests', () {
    test('Color to HSLColor Conversion', () {
      Color color = const Color(0x00ff6f00);
      HSLColor hslColor = ToHSLColor().convert(color);
      expect(hslColor, isA<HSLColor>());
    });

    test('MaterialColor to HSLColor Conversion', () {
      MaterialColor materialColor = Colors.orange;
      HSLColor hslColor = ToHSLColor().convert(materialColor);
      expect(hslColor, isA<HSLColor>());
    });

    test('MaterialAccentColor to HSLColor Conversion', () {
      MaterialAccentColor materialAccentColor = Colors.orangeAccent;
      HSLColor hslColor = ToHSLColor().convert(materialAccentColor);
      expect(hslColor, isA<HSLColor>());
    });
  });

  group('ToHSLColor MaterialAccentColor Tests', () {
    test('MaterialAccentColor to HSLColor Conversion', () {
      MaterialAccentColor materialAccentColor = Colors.orangeAccent;
      HSLColor hslColor = ToHSLColor().convert(materialAccentColor);
      expect(hslColor, isA<HSLColor>());
    });
  });

  group('ToHSLColor MaterialColor Tests', () {
    test('MaterialColor to HSLColor Conversion', () {
      MaterialColor materialColor = Colors.orange;
      HSLColor hslColor = ToHSLColor().convert(materialColor);
      expect(hslColor, isA<HSLColor>());
    });
  });

  group('ToHSLColor ColorSwatch Tests', () {
    test('ColorSwatch to HSLColor Conversion', () {
      ColorSwatch colorSwatch = Colors.orange;
      HSLColor hslColor = ToHSLColor().convert(colorSwatch);
      expect(hslColor, isA<HSLColor>());
    });
  });

  group('ToHSLColor HSVColor Tests', () {
    test('HSVColor to HSLColor Conversion', () {
      HSVColor hsvColor = HSVColor.fromColor(Colors.orange);
      HSLColor hslColor = ToHSLColor().convert(hsvColor);
      expect(hslColor, isA<HSLColor>());
    });
  });

  group('ToHSLColor Unsupported Type Tests', () {
    test('Unsupported Color Type', () {
      double unsupportedColor = 123.45;
      expect(() => ToHSLColor().convert(unsupportedColor), throwsArgumentError,
          reason: 'Unsupported color type should throw ArgumentError');
    });
  });

  // ToMaterialAccentColor Tests
  group('ToMaterialAccentColor Hex Tests', () {
    test('Hex to MaterialAccentColor Conversion', () {
      String hexString = '#FF6F00';
      MaterialAccentColor materialAccentColor =
          ToMaterialAccentColor().convert(hexString);
      expect(materialAccentColor, isA<MaterialAccentColor>());
    });

    test('Invalid Hex String', () {
      String invalidHex = 'invalid_hex';
      expect(() => ToMaterialAccentColor().convert(invalidHex),
          throwsFormatException,
          reason: 'Invalid hex string should throw FormatException');
    });
  });

  group('ToMaterialAccentColor Color Tests', () {
    test('Color to MaterialAccentColor Conversion', () {
      Color color = const Color(0x00ff6f00);
      MaterialAccentColor materialAccentColor =
          ToMaterialAccentColor().convert(color);
      expect(materialAccentColor, isA<MaterialAccentColor>());
    });

    test('MaterialColor to MaterialAccentColor Conversion', () {
      MaterialColor materialColor = Colors.orange;
      MaterialAccentColor materialAccentColor =
          ToMaterialAccentColor().convert(materialColor);
      expect(materialAccentColor, isA<MaterialAccentColor>());
    });

    test('MaterialAccentColor to MaterialAccentColor Conversion', () {
      MaterialAccentColor inputMaterialAccentColor = Colors.orangeAccent;
      MaterialAccentColor materialAccentColor =
          ToMaterialAccentColor().convert(inputMaterialAccentColor);
      expect(materialAccentColor, equals(inputMaterialAccentColor));
    });
  });

  group('ToMaterialAccentColor MaterialColor Tests', () {
    test('MaterialColor to MaterialAccentColor Conversion', () {
      MaterialColor materialColor = Colors.orange;
      MaterialAccentColor materialAccentColor =
          ToMaterialAccentColor().convert(materialColor);
      expect(materialAccentColor, isA<MaterialAccentColor>());
    });
  });

  group('ToMaterialAccentColor ColorSwatch Tests', () {
    test('ColorSwatch to MaterialAccentColor Conversion', () {
      ColorSwatch colorSwatch = Colors.orange;
      MaterialAccentColor materialAccentColor =
          ToMaterialAccentColor().convert(colorSwatch);
      expect(materialAccentColor, isA<MaterialAccentColor>());
    });
  });

  group('ToMaterialAccentColor HSVColor Tests', () {
    test('HSVColor to MaterialAccentColor Conversion', () {
      HSVColor hsvColor = HSVColor.fromColor(Colors.orange);
      MaterialAccentColor materialAccentColor =
          ToMaterialAccentColor().convert(hsvColor);
      expect(materialAccentColor, isA<MaterialAccentColor>());
    });
  });

  group('ToMaterialAccentColor HSLColor Tests', () {
    test('HSLColor to MaterialAccentColor Conversion', () {
      HSLColor hslColor = HSLColor.fromColor(Colors.orange);
      MaterialAccentColor materialAccentColor =
          ToMaterialAccentColor().convert(hslColor);
      expect(materialAccentColor, isA<MaterialAccentColor>());
    });
  });

  group('ToMaterialAccentColor Unsupported Type Tests', () {
    test('Unsupported Color Type', () {
      double unsupportedColor = 123.45;
      expect(() => ToMaterialAccentColor().convert(unsupportedColor),
          throwsArgumentError,
          reason: 'Unsupported color type should throw ArgumentError');
    });
  });
}
