class Temperature implements Comparable<Temperature> {
    /*
   * The value of this Temperature object in celsius degrees.
   */
    final double _temperature;

    ///celsius to fahrenheit
    static double _celsius_to_fahrenheit(double value) => value * 9 / 5 + 32;
    ///to/from kelvin
    static const double _kelvin = 273.15;
    static double _kelvin_to_celsius(double value) => value < 0 ? -_kelvin : value - _kelvin;

    ///celsius to rankine
    static double _celsius_to_rankine(double value) => value * 9 / 5 + 32 + 459.67;
    ///celsius to romer
    static double _celsius_to_romer(double value) => value * 21 / 40 + 7.5;

    ///fahrenheit to celsius
    static double _fahrenheit_to_celsius(double value) => (value - 32) * 5/9;
    ///rankine to celsius
    static double _rankine_to_celsius(double value) => value < 0 ? -_kelvin : (value - 459.67 - 32) * 5/9;
    ///romer to celsius
    static double _romer_to_celsius(double value) => (value - 7.5) * 40/21;

    Temperature.fromCelsius({double value : 0.0}): _temperature = value;
    Temperature.fromFahrenheit({double value : 0.0}): _temperature = _fahrenheit_to_celsius(value);
    Temperature.fromKelvin({double value : 0.0}): _temperature = _kelvin_to_celsius(value);
    Temperature.fromRankine({double value : 0.0}): _temperature = _rankine_to_celsius(value);
    Temperature.fromRomer({double value : 0.0}): _temperature = _romer_to_celsius(value);


    double get inCelsius => _returnValue(_temperature);
    double get inFahrenheit => _returnValue(_celsius_to_fahrenheit(_temperature));
    double get inKelvin => _returnValue(_temperature + _kelvin);
    double get inRankine => _returnValue(_celsius_to_rankine(_temperature));
    double get inRomer => _returnValue(_celsius_to_romer(_temperature));

    double _returnValue(num value) => double.parse(value.toStringAsFixed(6));

    /**
     * Compares this Temperature to [other], returning zero if the values are equal.
     *
     * Returns a negative integer if this `Temperature` is shorter than
     * [other], or a positive integer if it is longer.
     *
     * A negative `Temperature` is always considered shorter than a positive one.
     *
     */
    int compareTo(Temperature other) => _temperature.compareTo(other._temperature);
}