class Weight implements Comparable<Weight> {
  /*
   * The value of this weight object in grams.
   */
  final double _grams;

  /// pounds to kg
  static const double _pounds_to_kg = 0.45359237;

  Weight.fromPounds({double value: 0.0}) : _grams = (value * _pounds_to_kg) * 1000;
  Weight.fromGrams({double value: 0.0}) : _grams = value;
  Weight.fromKilograms({double value: 0.0}) : _grams = value * 1000;

  double get inPounds => _returnValue((_grams / 1000) / _pounds_to_kg);
  double get inGrams => _returnValue(_grams);
  double get inKiloGrams => _returnValue(_grams / 1000);

  double _returnValue(num value) => double.parse(value.toString());

  /**
     * Compares this Weight to [other], returning zero if the values are equal.
     *
     * Returns a negative integer if this `Weight` is less than
     * [other], or a positive integer if it is heavier.
     *
     * A negative `Weight` is always considered less than a positive one.
     *
     */
  int compareTo(Weight other) => _grams.compareTo(other._grams);
}
