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
  color_converter: ^1.0.2
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
  // from hex
  final Color hexToColor = ColorConverter<Color>().convert('#FF6F00');
  final hexToColorSwatch = ColorConverter<ColorSwatch>().convert('#FF6F00');
  final hexToHSVColor = ColorConverter<HSVColor>().convert('#FF6F00');
  final hexToHSLColor = ColorConverter<HSLColor>().convert('#FF6F00');
  final hexToMaterialColor = ColorConverter<MaterialColor>().convert('#FF6F00');
  final hexToMaterialAccentColor =
  ColorConverter<MaterialAccentColor>().convert('#FF6F00');

  // from color
  final colorToColor = ColorConverter<Color>().convert(const Color(0xFFFF6F00));
  final colorToColorSwatch =
  ColorConverter<ColorSwatch>().convert(const Color(0xFFFF6F00));
  final colorToHSVColor =
  ColorConverter<HSVColor>().convert(const Color(0xFFFF6F00));
  final colorToHSLColor =
  ColorConverter<HSLColor>().convert(const Color(0xFFFF6F00));
  final colorToMaterialColor =
  ColorConverter<MaterialColor>().convert(const Color(0xFFFF6F00));
  final colorToMaterialAccentColor =
  ColorConverter<MaterialAccentColor>().convert(const Color(0xFFFF6F00));
  
  
}
```

## Additional information

- Report issues or contribute on [GitHub](https://github.com/abdullahbokl/color_converter).
