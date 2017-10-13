class Length implements Comparable<Length> {
    ///meters to kilometers: meters * 10^-3
    static const double _m_to_km = 0.001;
    /// meters to miles: meters * 6.21371192 * 10^-4
    static const double _m_to_mi = 6.21371192 * 0.0001;

    ///kilometers to meters: km * 10^3
    static const double _km_to_m = 1000.0;
    ///miles to meters: mi * 1.6093440 * 10^3
    static const double _mi_to_m = 1.6093440 * 1000;
    /*
   * The value of this Length object in meters.
   */
    final double _length;

    Length.fromMeters({double value : 0.0})     : _length = value;
    Length.fromKilometers({double value : 0.0}) : _length = value * _km_to_m;
    Length.fromMiles({double value : 0.0})      : _length = value * _mi_to_m;

    double get inMeters     => _returnValueOrZero(_length);
    double get inKilometers => _returnValueOrZero(_length * _m_to_km);
    double get inMiles      => _returnValueOrZero(_length * _m_to_mi);
    double _returnValueOrZero(num value) => value >= 0.0 ? double.parse(value.toStringAsFixed(6)) : 0.0;

    /**
     * Compares this Length to [other], returning zero if the values are equal.
     *
     * Returns a negative integer if this `Length` is shorter than
     * [other], or a positive integer if it is longer.
     *
     * A negative `Length` is always considered shorter than a positive one.
     *
     */
    int compareTo(Length other) => _length.compareTo(other._length);
}