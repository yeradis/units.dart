import 'dart:math';

class Angle implements Comparable<Angle> {
    /*
   * The value of this Angle object in degrees.
   */
    final double _angle;

    ///degrees to radians
    static const double degree_to_rad = PI / 180.0;

    ///radians to degrees
    static const double rad_to_degree = 180.0 / PI;

    Angle.fromDegrees({double value : 0.0}): _angle = value;
    Angle.fromRadians({double value: 0.0}): _angle = value * rad_to_degree;

    double get inDegrees => _angle;
    double get inRadians => _angle * degree_to_rad;

    /**
     * Compares this Angle to [other], returning zero if the values are equal.
     *
     * Returns a negative integer if this `Angle` is shorter than
     * [other], or a positive integer if it is longer.
     *
     * A negative `Angle` is always considered shorter than a positive one.
     *
     */
    int compareTo(Angle other) => _angle.compareTo(other._angle);
}