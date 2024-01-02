# Color Converter
This Dart package provides a utility class for converting both hex color codes and `Color` objects to various color types. It supports conversion to `Color`, `ColorSwatch`, `HSVColor`, `HSLColor`, `MaterialColor`, and `MaterialAccentColor`.

## Features

- Hex to `Color` conversion
- Hex to `ColorSwatch` conversion
- Hex to `HSVColor` conversion
- Hex to `HSLColor` conversion
- Hex to `MaterialColor` conversion
- Hex to `MaterialAccentColor` conversion

## Getting Started

Add this package to your `pubspec.yaml` file:

```yaml
dependencies:
  color_converter: ^1.0.3
```
Run the following command to get the dependencies: 
```bash
$ flutter pub get
```

## Usage

Import the package in your Dart file and use the hexToColor method:

```dart
import 'package:color_converter/color_type_converter.dart';
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
  final Color color5 = ColorConverter<Color>().convert(Colors.red);
  final ColorSwatch colorSwatch5 =
  ColorConverter<ColorSwatch>().convert(Colors.red);
  final HSVColor hsvColor5 = ColorConverter<HSVColor>().convert(Colors.red);
  final HSLColor hslColor5 = ColorConverter<HSLColor>().convert(Colors.red);
  final MaterialColor materialColor5 =
  ColorConverter<MaterialColor>().convert(Colors.red);
  final MaterialAccentColor materialAccentColor5 =
  ColorConverter<MaterialAccentColor>().convert(Colors.red);
}
```

## Additional information

- Report issues or contribute on [GitHub](https://github.com/abdullahbokl/color_converter).
