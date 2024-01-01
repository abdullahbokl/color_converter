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

void main() {
    // Hex to Color
    Color color = ColorConverter.hexToColor('#FF0000');
    print(color); // Color(0xFFFF0000)
    
    // Hex to ColorSwatch
    ColorSwatch colorSwatch = ColorConverter.hexToColorSwatch('#FF0000');
    print(colorSwatch); // ColorSwatch(0xFFFF0000: MaterialColor(primary value: Color(0xFFFF0000)), {50: Color(0xFFFFEBEE), 100: Color(0xFFFFCDD2), 200: Color(0xFFEF9A9A), 300: Color(0xFFE57373), 400: Color(0xFFEF5350), 500: Color(0xFFF44336), 600: Color(0xFFE53935), 700: Color(0xFFD32F2F), 800: Color(0xFFC62828), 900: Color(0xFFB71C1C)})
    
    // Hex to HSVColor
    HSVColor hsvColor = ColorConverter.hexToHSVColor('#FF0000');
    print(hsvColor); // HSVColor(0.0, 1.0, 1.0, 1.0)
    
    // Hex to HSLColor
    HSLColor hslColor = ColorConverter.hexToHSLColor('#FF0000');
    print(hslColor); // HSLColor(0.0, 1.0, 0.5, 1.0)
    
    // Hex to MaterialColor
    MaterialColor materialColor = ColorConverter.hexToMaterialColor('#FF0000');
    print(materialColor); // MaterialColor(primary value: Color(0xFFFF0000))
    
    // Hex to MaterialAccentColor
    MaterialAccentColor materialAccentColor = ColorConverter.hexToMaterialAccentColor('#FF0000');
    print(materialAccentColor); // MaterialAccentColor(primary value: Color(0xFFFF0000))
}
```

## Additional information

- Report issues or contribute on [GitHub](https://github.com/abdullahbokl/color_converter).
