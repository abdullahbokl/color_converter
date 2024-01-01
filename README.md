# Color Converter

This Dart package provides a utility class for converting hex color codes to various color types. It supports conversion to `Color`, `ColorSwatch`, `HSVColor`, `HSLColor`, `MaterialColor`, and `MaterialAccentColor`.

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
  color_converter: ^1.0.0
```
Run the following command to get the dependencies: 
```bash
$ flutter pub get
```

## Usage

Import the package in your Dart file and use the hexToColor method:

```dart
import 'package:color_converter/color_converter.dart';

void colorConverter() {
  // Hex to Color
  final Color color = ColorConverter.hexToColor<Color>('#FF6F00');
  print(color);

  // Hex to ColorSwatch
  ColorSwatch colorSwatch = ColorConverter.hexToColor<ColorSwatch>('#FF0000');
  print(colorSwatch);

  // Hex to HSVColor
  HSVColor hsvColor = ColorConverter.hexToColor<HSVColor>('#FF0000');
  print(hsvColor);

  // Hex to HSLColor
  HSLColor hslColor = ColorConverter.hexToColor<HSLColor>('#FF0000');
  print(hslColor);

  // Hex to MaterialColor
  MaterialColor materialColor =
  ColorConverter.hexToColor<MaterialColor>('#FF0000');
  print(materialColor);

  // Hex to MaterialAccentColor
  MaterialAccentColor materialAccentColor =
  ColorConverter.hexToColor<MaterialAccentColor>('#FF0000');
  print(materialAccentColor);
}
```

## Additional information

- Report issues or contribute on [GitHub](https://github.com/abdullahbokl/color_converter).
