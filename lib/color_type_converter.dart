import 'exports.dart';

class ColorConverter<T> {
  T convert(dynamic color) {
    // check if

    final converters = [
      ToMaterialColor(),
      ToColor(),
      ToColorSwatch(),
      ToHSVColor(),
      ToHSLColor(),
      ToMaterialAccentColor(),
    ];

    for (var converter in converters) {
      if (converter.supports(T)) {
        return converter.convert(color);
      }
    }

    throw ArgumentError("Unsupported color type: $color");
  }
}
