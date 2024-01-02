abstract class ColorConverterInterface {
  bool supports(Type type);

  dynamic convert(dynamic color);
}
