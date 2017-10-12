import 'dart:math';

class Length implements Comparable<Length> {
    /*
   * The value of this Length object in meters.
   */
    final double _length;

    Length.fromMeters({double value : 0.0}) : _length = value;
    Length.fromKilometers({double value : 0.0}) : _length = value * pow(10, 3);
    Length.fromMiles({double value : 0.0}) : _length = value * 1.6093440 * pow(10, 3);

    double get inMeters => _length;
    double get inKilometers => _length * pow(10, -3);
    double get inMiles => _length * 6.21371192 * pow(10, -4);
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