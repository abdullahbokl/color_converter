# Color Converter

This Dart package provides a utility class for converting both hex color codes and `Color` objects to various color
types. It supports conversion to `Color`, `ColorSwatch`, `HSVColor`, `HSLColor`, `MaterialColor`,
and `MaterialAccentColor`.

## Features

- The types that can be converted are `Color`, `ColorSwatch`, `HSVColor`, `HSLColor`, `MaterialColor`,
  and `MaterialAccentColor`.
- Any type can be converted to any other type.

## Getting Started

Add this package to your `pubspec.yaml` file:

```yaml
dependencies:
  color_type_converter: ^1.0.5
```

Run the following command to get the dependencies:

```bash
$ flutter pub get
```

## Usage

Import the package in your Dart file and use the hexToColor method:

```dart
import 'package:color_type_converter/color_type_converter.dart';
import 'package:flutter/material.dart';

colorConverter() {
  // from hex string
  final Color color = ColorConverter<Color>().convert('#FF6F00');
  final ColorSwatch colorSwatch =
  ColorConverter<ColorSwatch>().convert('#FF6F00');
  final HSVColor hsvColor = ColorConverter<HSVColor>().convert('#FF6F00');
  final HSLColor hslColor = ColorConverter<HSLColor>().convert('#FF6F00');
  final MaterialColor materialColor =
  ColorConverter<MaterialColor>().convert('#FF6F00');
  final MaterialAccentColor materialAccentColor =
  ColorConverter<MaterialAccentColor>().convert('#FF6F00');

  // from color
  final Color color2 = ColorConverter<Color>().convert(Colors.redAccent);
  final ColorSwatch colorSwatch2 =
  ColorConverter<ColorSwatch>().convert(Colors.redAccent);
  final HSVColor hsvColor2 =
  ColorConverter<HSVColor>().convert(Colors.redAccent);
  final HSLColor hslColor2 =
  ColorConverter<HSLColor>().convert(Colors.redAccent);
  final MaterialColor materialColor2 =
  ColorConverter<MaterialColor>().convert(Colors.redAccent);
  final MaterialAccentColor materialAccentColor2 =
  ColorConverter<MaterialAccentColor>().convert(Colors.redAccent);

  // from HSVColor // red
  final Color color3 = ColorConverter<Color>().convert(
    const HSVColor.fromAHSV(1, 0, 1, 1),
  );
  final ColorSwatch colorSwatch3 = ColorConverter<ColorSwatch>().convert(
    const HSVColor.fromAHSV(1, 0, 1, 1),
  );
  final HSVColor hsvColor3 = ColorConverter<HSVColor>().convert(
    const HSVColor.fromAHSV(1, 0, 1, 1),
  );
  final HSLColor hslColor3 = ColorConverter<HSLColor>().convert(
    const HSVColor.fromAHSV(1, 0, 1, 1),
  );
  final MaterialColor materialColor3 = ColorConverter<MaterialColor>().convert(
    const HSVColor.fromAHSV(1, 0, 1, 1),
  );
  final MaterialAccentColor materialAccentColor3 =
  ColorConverter<MaterialAccentColor>().convert(
    const HSVColor.fromAHSV(1, 0, 1, 1),
  );

  // from HSLColor
  final Color color4 = ColorConverter<Color>().convert(
    const HSLColor.fromAHSL(1, 0, 1, 1),
  );
  final ColorSwatch colorSwatch4 = ColorConverter<ColorSwatch>().convert(
    const HSLColor.fromAHSL(1, 0, 1, 1),
  );
  final HSVColor hsvColor4 = ColorConverter<HSVColor>().convert(
    const HSLColor.fromAHSL(1, 0, 1, 1),
  );
  final HSLColor hslColor4 = ColorConverter<HSLColor>().convert(
    const HSLColor.fromAHSL(1, 0, 1, 1),
  );
  final MaterialColor materialColor4 = ColorConverter<MaterialColor>().convert(
    const HSLColor.fromAHSL(1, 0, 1, 1),
  );
  final MaterialAccentColor materialAccentColor4 =
  ColorConverter<MaterialAccentColor>().convert(
    const HSLColor.fromAHSL(1, 0, 1, 1),
  );

  // from MaterialColor
  const matColor = MaterialColor(0xFFFF0000, {
    50: Color(0xFFFFEBEE),
    100: Color(0xFFFFCDD2),
    200: Color(0xFFEF9A9A),
    300: Color(0xFFE57373),
    400: Color(0xFFEF5350),
    500: Color(0xFFF44336),
    600: Color(0xFFE53935),
    700: Color(0xFFD32F2F),
    800: Color(0xFFC62828),
    900: Color(0xFFB71C1C),
  });
  final Color color5 = ColorConverter<Color>().convert(matColor);
  final ColorSwatch colorSwatch5 =
  ColorConverter<ColorSwatch>().convert(matColor);
  final HSVColor hsvColor5 = ColorConverter<HSVColor>().convert(matColor);
  final HSLColor hslColor5 = ColorConverter<HSLColor>().convert(matColor);
  final MaterialColor materialColor5 =
  ColorConverter<MaterialColor>().convert(matColor);
  final MaterialAccentColor materialAccentColor5 =
  ColorConverter<MaterialAccentColor>().convert(matColor);
}
```

## Additional information

- Report issues or contribute on [GitHub](https://github.com/abdullahbokl/color_type_converter).
